#Load in packaages
require(dplyr)
require(ggplot2)
require(tidyr)
require(readxl)
require(survival)
require(DetLifeInsurance)
require(parallel)
require(multidplyr)

#Setup
setwd("C:/Users/Simon/Desktop/ACTL5100 assignment")
df <- read.csv("2024-srcsc-superlife-inforce-dataset.csv", header = TRUE, skip = 3)
dim(df)
mort <- read_excel("srcsc-2024-lumaria-mortality-table.xlsx", skip = 13)
head(mort)
econ <- read_excel("srcsc-2024-lumaria-economic-data.xlsx", skip = 10)

#Cox regression
df_cox <- df %>%
  mutate(T1 = Year.of.Lapse - Issue.year, T2 = Year.of.Death - Issue.year,
         Censored = ifelse(is.na(Death.indicator) & is.na(Lapse.Indicator) == TRUE, 2023 - Issue.year, 0)) %>%
  replace(is.na(.), 0) %>%
  mutate(Time.to.Death = T1 + T2 + Censored) %>%
  select(-c(T1, T2, Censored))
ggplot(df_cox, aes(x = Time.to.Death)) +
  geom_histogram(binwidth = 1, colour = "black", fill = "dodgerblue2") +
  theme_bw()


cox.model <- coxph(Surv(Time.to.Death, Death.indicator) ~ Sex + Smoker.Status + Underwriting.Class  + Urban.vs.Rural +
                     Policy.type + Issue.age,
                   data = df_cox, ties = "efron")
summary(cox.model)
anova(cox.model)

cox.test <- cox.zph(cox.model)
cox.test
plot(cox.test)


t20.death <- df %>%
  filter(Death.indicator == 1, Policy.type == "T20") %>%
  mutate(length = Year.of.Death - Issue.year) %>%
  group_by(Smoker.Status, length) %>%
  summarise(Number = n()) %>%
  ungroup() %>%
  group_by(Smoker.Status) %>%
  mutate(rate = Number/sum(Number))


spwl.death <- df %>%
  filter(Death.indicator == 1, Policy.type == "SPWL") %>%
  mutate(length = Year.of.Death - Issue.year) %>%
  group_by(Smoker.Status, length) %>%
  summarise(Number = n()) %>%
  ungroup() %>%
  group_by(Smoker.Status) %>%
  mutate(rate = Number/sum(Number))


#Calculating reduced mortality rates
program1 <- (1+c(rep(0.1, 30), seq(from = 0.1, to = 0.05, length.out = 60), rep(0, 30)))
program2 <- (1+c(rep(0.5, 30), seq(from = 0.5, to = 0.4, length.out = 70), rep(0, 20)))
mortA <- read_excel("Mortality.xlsx", sheet = 1)
mortB <- read_excel("Mortality.xlsx", sheet = 2)
mortB.red <- mortB %>%
  mutate(Mortality_Rate = Mortality_Rate/program1)
mortC <- read_excel("Mortality.xlsx", sheet = 3)
mortC.red <- mortC %>%
  mutate(Mortality_Rate = Mortality_Rate/program1)
mortC.red2 <- mortC %>%
  mutate(Mortality_Rate = Mortality_Rate/(program1*program2))
red.rates <- data.frame(Age = mortA$Age, Given = mortA$Mortality_Rate, 
                        Non.Sm.rdrate = mortB.red$Mortality_Rate, Sm.rdrate = mortC.red$Mortality_Rate, Sm.rd2rate = mortC.red2$Mortality_Rate)


#PARALLEL PROCESSING HERE !!!!
#Setup for 16 clusters (I have 20 CPU cores, use less than number of cores)
parallel::detectCores() #no. of cores
cluster <- new_cluster(12)
cluster_copy(cluster, c("df", "mortA", "mortB", "mortB.red", "mortC", "mortC.red", "mortC.red2"))

#Annuity cost
annuity.cost.t20 <- data.frame(Age = c(26:87)) %>%
  rowwise() %>%
  mutate(Cost = a(Age, 0, 20, 1, 0.06, data = mortC.red2, cap = 300))
annuity.cost.wl <- data.frame(Age = c(26:87)) %>%
  rowwise() %>%
  mutate(Cost = a(Age, 0, 120-Age, 1, 0.06, data = mortC.red2, cap = 300))

#T20 Smoker
pv.t20.smoker <- df %>%
  filter(Policy.type == "T20", Smoker.Status == "S", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 20, 1, 0.06, data = mortC, cap = Face.amount)) %>%
  collect()
pv.t20.smokerF <- pv.t20.smoker %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV))

pv.t20.smoker.red <- df %>%
  filter(Policy.type == "T20", Smoker.Status == "S", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 20, 1, 0.06, data = mortC.red2, cap = Face.amount)) %>%
  collect()
pv.t20.smoker.redF <- pv.t20.smoker.red %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV + 3500))


#T20 non-smoker
pv.t20.nosmoker <- df %>%
  filter(Policy.type == "T20", Smoker.Status == "NS", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 20, 1, 0.06, data = mortB, cap = Face.amount)) %>%
  collect()
pv.t20.nosmokerF <- pv.t20.nosmoker %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV))

pv.t20.nosmoker.red <- df %>%
  filter(Policy.type == "T20", Smoker.Status == "NS", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 20, 1, 0.06, data = mortB.red, cap = Face.amount)) %>%
  collect()
pv.t20.nosmoker.redF <- pv.t20.nosmoker.red %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV))

#SPWL Smoker
pv.wl.smoker <- df %>%
  filter(Policy.type == "SPWL", Smoker.Status == "S", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 120-Issue.age, 1, 0.06, data = mortC, cap = Face.amount)) %>%
  collect()
pv.wl.smokerF <- pv.wl.smoker %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV))

pv.wl.smoker.red <- df %>%
  filter(Policy.type == "SPWL", Smoker.Status == "S", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 120-Issue.age, 1, 0.06, data = mortC.red2, cap = Face.amount)) %>%
  collect()
pv.wl.smoker.redF <- pv.wl.smoker.red %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV + 3500))


#SPWL non-smoker
pv.wl.nosmoker <- df %>%
  filter(Policy.type == "SPWL", Smoker.Status == "NS", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 120-Issue.age, 1, 0.06, data = mortB, cap = Face.amount)) %>%
  collect()
pv.wl.nosmokerF <- pv.wl.nosmoker %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV))

pv.wl.nosmoker.red <- df %>%
  filter(Policy.type == "SPWL", Smoker.Status == "NS", Issue.year > 2003) %>%
  select(Issue.year, Issue.age, Face.amount) %>%
  rowwise() %>%
  partition(cluster) %>%
  mutate(PV = DetLifeInsurance::A.(Issue.age, 0, 120-Issue.age, 1, 0.06, data = mortB.red, cap = Face.amount)) %>%
  collect()
pv.wl.nosmoker.redF <- pv.wl.nosmoker.red %>%
  group_by(Issue.year) %>%
  summarise(Total.cost = sum(PV))

#Calculating costs
past <- bind_rows(pv.t20.smokerF, pv.wl.smokerF) %>%
  group_by(Issue.year) %>%
  summarise(Total = sum(Total.cost))
past.red <- bind_rows(pv.t20.smoker.redF, pv.wl.smoker.redF) %>%
  group_by(Issue.year) %>%
  summarise(Total = sum(Total.cost))
saving <- data.frame(Year = past$Issue.year, Unmodified = past$Total, Reduced = past.red$Total) %>%
  mutate(Savings = Unmodified - Reduced) %>%
  mutate(Per.Policyholder = (past$Total - past.red$Total)/tmp$`n()`)
tmp <- df %>%
  filter(Issue.year > 2003, Smoker.Status == "S") %>%
  group_by(Issue.year) %>%
  summarise(n())

(past$Total - past.red$Total)/tmp$`n()`
