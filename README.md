# Superlife Savings Lives Case Challenge

### Members: Jason Qian, Zihan Xu, Ruoxiang Zhao, Simon Tang

## Table of Contents
- [Executive Summary](#Executive-Summary)
- [Objectives](#objectives)
- [Program Design](#program-design)
- [Pricing/Costs](#pricingcosts)
- [Assumptions](#assumptions)
- [Risk and Risk Mitigation](#risk-and-risk-mitigation)
- [Data and Data Limitations](#data-and-data-limitations)
- [Appendix](#Appendix)


## Executive Summary
This report was written with the intention of developing a wellness incentive program for Lumaria's SuperLife Insurance Company. We made the decision to concentrate on Cancer Screening and Smoking Cessation because of the Lumaria's economic circumstances, death rates, and potential interventions. From cancer screening and smoking cessation, the program reduces death rates by up to 60%, depending on the age of the insured. Projections and calculations  have been completed on the benefits of the intervention and sensitivity evaluations were done to verify the program's feasibility in a variety of situations.


## Objectives
The main objective of the proposed project is to develop and implement a health promotion programme within the long-term life insurance product SuperLife. The main objectives are:
- Reducing predicted mortality: Policyholders should be urged to adopt healthier lifestyles, such as frequent hospital visits, a balanced diet, and regular exercise, to lower their risk of disease and early death.
- Increase life insurance sales: Products can be made more appealing to draw in new clients while holding on to current ones by mixing health promotion with life insurance offerings.
- Improve product competitiveness: SuperLife can become more competitive by setting itself apart from its rivals with a unique health promotion initiative.
- Increase the economic value of SuperLife: raise SuperLife's worth by boosting sales and cutting claims expenses. The company's market share and overall financial performance will rise as a result.

Using predetermined metrics, the suggested plan's effectiveness should be assessed within a specified time frame—for example, following the first, third, and fifth years of execution. Among these indications are:
- Reduction of mortality: The efficacy of the strategy will be evaluated by contrasting the rates of death before and after it is put into action. It is anticipated that mortality rates will decline somewhat at the end of the first year and considerably at the end of the third and fifth.
●	Sales growth: evaluation of new sales growth and customer retention through sales data monitoring both prior to and following program execution. Expect steady yearly revenue increase.
- Customer engagement: evaluation of policyholder acceptance and engagement through the analysis of metrics like the proportion of health goals reached and the frequency with which the health monitoring app is used. This will make it possible to gauge consumer adoption and involvement.
- Customer satisfaction: Through frequent surveys, participants' happiness with the health promotion program is gauged. Higher rates of retention and word-of-mouth referrals need to be linked to high levels of satisfaction.
- Analysis of costs and benefits: The health promotion program's cost-effectiveness will be determined by weighing the program's direct and indirect benefits (like lower reimbursement costs and higher sales) against its program's costs. In the third and fifth years of the program, a considerable improvement in the cost-benefit ratio is anticipated.

Through consistent observation and evaluation of these KPIs, SuperLife can guarantee that the goals of the health promotion initiative are met. Furthermore, through continuous feedback and performance data-driven adjustments and optimizations, the program's long-term success and sustainability may be guaranteed by the company. In addition to helping the program accomplish its main aims, this strategic approach fits nicely with SuperLife's larger corporate objectives of enhancing policyholder health and boosting the business's financial performance.


## Program Design
### Outline
Our health incentive program is made up of two parts: Cancer Screening and Smoking Cessation. When a policyholder signs up for any policy, they are offered to join our health program. If the policyholder accepts, they will be offered a discount at discretion of the pricing team. In our program, policyholders will be offered professional practitioners to quit smoking and cancer screenings to prevent early risks.
### Justification
Our health program is designed to take advantage of a modern healthcare system by encouraging working and retiring adults to screen out cancer risks and discourage them from smoking. Lumaria’s demographics consist of lower-middle class workers, with a high 18% smoking rate. By working with specialists to resolve smoking addictions, we can reduce mortality that impacts Lumaria the most. To encourage participation within the program, we will offer discounts to premiums for policyholders found in good health. Being an opt-in program, it gives flexibility for policyholders.
### Evaluation Systems
These program features were decided on two key metrics: efficiency of integration and policyholder experience. For an effective program, we need to design one that is not prone to failure due to complexity. Likewise, the program needs to be easily understood for policyholders to willingly opt in without any uncertainty. This program offers up to 60% reduction in mortality from smoking cessation and cancer screening, depending on the policyholder’s age.

We will have a system in place to constantly monitor risks and the effectiveness of our program. In the short-term, we will monitor efficiency and policyholder experience. We will analyse adherence of the program and usage rates for new policyholders. In the long-term, we will begin measuring profitability and the actual effect on mortality of our policyholders. For this, we have allocated 5 years to the short-term evaluation and 20 years to the long-term evaluation.

<p align="center">
     <img src="Plots/Short-Term evaluation procedures.png" alt="image"/>
     <img src="Plots/Long-Term evalution procedures.png" alt="image"/>
</p>
<p align="center">
     Figure 1: Short-Term and Long-Term evaluation procedures
</p>


## Pricing/Costs
### Mortality Reduction
Using the given interventions table, our program has an estimated mortality reduction of up to 50% for Smoking Cessation and a 5% - 10% reduction for Cancer Screening. We have selected Smoking Cessation to have a 50% reduction at young ages, diminishing to 40% at the age of 70. A similar method was done for Cancer Screening as well. We took the mortality rates and multiplicatively reduced their rates by the associated factor.

<p align="center">
     <img src="Plots/Mortality formula.png" alt="image"/>
</p>
<p align="center">
     Figure 2: Mortality formula
</p>
where q_x are the mortality rates and x_i are the mortality rate reductions.

### Past Experience
To estimate the effect of our program in the past 20 years, we calculated the actuarial present value of all policies and took the sum in each year, using empirical mortality tables. We performed the same calculations but with the reduced mortality rates, while also adding the estimated cost of running the program (Č3,500 per policyholder). The full table can be found in the appendix. The given values are the expected savings per policyholder if the health program was implemented with a 6% interest rate.

|     Year                      |     Per. Policyholder (Č)    |     Year                 |     Per. Policyholder (Č)    |
|-------------------------------|------------------------------|--------------------------|------------------------------|
|     2004                      |     24874.16                 |     2014                 |           18994.20           |
|     2005                      |     25084.54                 |     2015                 |           18720.73           |
|     2006                      |     24169.71                 |     2016                 |           17751.21           |
|     2007                      |     24513.84                 |     2017                 |           18319.58           |
|     2008                      |     24214.62                 |     2018                 |           16470.17           |
|     2009                      |     22543.67                 |     2019                 |           16322.47           |
|     2010                      |     21521.07                 |     2020                 |           15468.50           |
|     2011                      |     20889.53                 |     2021                 |           13821.04           |
|     2012                      |     19549.48                 |     2022                 |           13144.11           |
|     2013                      |     19934.00                 |     2023                 |           10282.56           |

Table 1: Average savings per policyholder if the health program was implemented.

From the table, the health incentive program would save at least Č10,000 in expected future death benefits paid out. The amount of savings per policyholder is decreasing likely due to improving mortality and decreasing new policyholder plans being created in the year.

### Economic Value for Future Policies
To determine the economic value of the proposed cancer screening and smoking cessation program. We model the cash flows of different policies issued to a 35 year old with the mortality and lapse rates calculated from our in force dataset. This approach allows us to determine the expected savings of implementing the policy.

| 20 Year Term Policy          | Present Value of Claims and Intervention Cost |
|------------------------------|-----------------------------------------------|
| Non Smoker (No Intervention) | 36,594                                        |
| Smoker (No Intervention)     | 142,101                                       |
| Smoker (Intervention)        | 91,389                                        |

Table 2: 20 Year Term Policy - (Age 35, 2 Mil DB) 

<p align="center">
     <img src="Plots/20 Year Term Policy - Claims Forecast.png" alt="image"/>
</p>
<p align="center">
     Figure 3: 20 Year Term Policy - Claims Forecast
</p>

In the 20 year term policies, we can see that the new mortality rates resulting from the smoking cessation program and cancer screening causes a significant reduction in the expected claims cost for a policy sold to an individual who is classified as a smoker. At a 6% discount factor the present value of the claims and intervention cost provides an expected benefit of 50,712 (Č) over the life of the policy in relation to the claims cost. 

| Whole Life Insurance          | Present Value of Claims and Intervention Cost |
|-------------------------------|-----------------------------------------------|
| Non Smoker (No Intervention)  | 141,440                                       |
| Smoker (No Intervention)      | 411,997                                       |
| Smoker (Intervention)         | 340,785                                       |

Table 3: Whole Life Insurance - (Age 35, 2 Mil DB)

<p align="center">
     <img src="Plots/Whle Life Policy - Claims Forecast.png" alt="image"/>
</p>
<p align="center">
     Figure 4: Whole Life Policy - Claims Forecast
</p>

In the Whole Life Policy, the new mortality rates resulting from the program seems to shift the graph of the outflows to the right. This is due to the expected increase in mortality of the individuals who are classified as a smoker as a result of the interventions. At a 6% discount factor the present value of the claims and intervention costs provides a benefit of 71,212 (Č) over the life of the policy sold solely in relation to claims cost.

### Pricing Changes
Based on experience if the smoking cessation program and the cancer screening program lead to a consistent decrease in the expected mortality. For individuals who are classified as a smoker and undertake the interventions the benefits of this will be passed on to the policyholder through a reduction in premiums as reflecting their reduced risk. This will incentivise healthy habits of policyholders which also decreases the expected claims cost for Super Life. 

For the whole life insurance policy in addition to the changes in the term life insurance we can also complete an adjustment of the cash value accumulation. Due to the longer life expectancies the expected growth rate of the fund may be adjusted leading to more competitive policies sold. 


## Assumptions
### Mortality Formula Assumptions
The following fundamental presumptions are made while applying the mortality reduction formula:

Linear and multiplicative effects: the formula makes the assumption that the deaths that result from cancer screening and quitting smoking are multiplicative, meaning that the intervention's impact may be directly adjusted for the initial death rate by multiplying it by a factor. This presumption suggests that the intervention's impact is unaffected by other variables that contributed to the initial death rate.

Consistency of the intervention effect: It is believed that each member of the target group would experience the intervention's effects consistently. This implies that, whatever individual differences like age, sex, or baseline mortality, everyone experiences the same relative risk decrease.

Additivity of mortality reductions: This model implies that the mortality reductions resulting from individual interventions are additive when taking into account the combined impact of several interventions. In other words, the risk reductions from all of the therapies can be totaled up if a person takes them concurrently.

Intervention effects are constant over time: it is assumed that intervention effects remain constant over time in the population, i.e., the reduction in mortality due to the intervention is constant throughout the study period. This ignores intervention effects that vary over time, such as the persistence of the intervention or the adaptation of the population.

### Other assumptions
Fixed Inflation Rate: The inflation rate we use to project the cost of the death benefit is through the average inflation rate from 2001 to 2023 (2.54%). We have assumed that it is fixed.

Fixed Interest Rate: An assumed flat rate of 6% was used to calculate past experience data. This is a conservative estimate based on the given risk-free spot rates.


## Risk and Risk Mitigation
**Financial risk:** Due to the time value of money, the later SuperLife pays the death benefit, the more financially beneficial to them. Therefore, pricing analysts can give discounts to the premium after considering the reduced mortality rates we expect after implementing the health incentives. In this case they can gain more competitive advantage. However, there is the risk of Superlife overestimating the mortality reduction and results in them having to pay death benefit much earlier than they thought and causing loss. (Medium likelihood) 

**Credit risk:** The health incentive design involves Superlife collaborating with relevant health institutions for health check-ups etc. Therefore, there exists the risk of the health providers not providing the services as promised (Low- medium likelihood)

**Fraud risk:** Policyholders taking advantage of the system by profiting off the benefits (High likelihood)

**Ethical risk:** The new underwriting process in the health incentives program may put certain groups at disadvantage as they need to pay more premium than the majority group. (High Likelihood)

**Environmental risk:** The risk of natural disasters and pandemic that may lead to significant increases in mortality rates of policyholders such as floods, earthquakes, and Covid-19. (Med likelihood)

**Operational risk No.1:** Superlife needs to collect a considerable amount of information from policyholders in the new health incentives implemented. There is a risk that the data may be mishandled, leaked or compromised, leading to data breaches or identity theft.  

**Operational risk No.2:** Since the reduction in mortality rate is only an estimate, this provides the opportunity for Superlife’s executives to over-report the mortality reduction, and therefore need to prepare less reserve and aim for higher return. 

### Risk mitigation
**Financial Risk:** Complete proper sensitivity and profitability testing before implementing the health incentives. Provide reserves accordingly based on the worst situations projected. Purchase more accurate data from other relevant institutions

**Credit risk:** When partnering with health providers, make sure all relevant contracts and legal documents are signed and prepared. In this case, SuperLife can reduce the financial loss by suing the health providers if they fail to practise their responsibilities.

**Fraud Risk:** Refine the policies in the insurance contract to ensure people don't make any profit from the insurance product.

**Ethical Risk:** Give special considerations to those who are put in disadvantage in the underwriting process involuntarily.

**Environmental risk:** The life insurance product can contain certain exclusions for some environmental risks that can cause significant increase in overall mortality rates. 

**Operational Risk No.1:**  Provide relevant employee training to improve employee awareness on data security practice. Conduct regular data security audit and assessment to identify vulnerabilities in the data system and ensure compliance with relevant data security regulations. 

**Operational Risk No.2:** Disclose the information used to determine mortality reduction as well as the projected cash flow of Superlife to increase transparency to policyholders and regulation institutions.

### Sensitivity testing
The sensitivity testing was performed by adjusting the discount rates in the assumption and the mortality rates computed. The discount rates were adjusted by ± 0.25% and 0.5%, the mortality rates were adjusted by ± 2.5% and 5%。

| Discount Rate Changes  | 6.25% discount rate        | 6.5% discount rate       | 5.75% discount rate         | 5.5% discount rate        |
|------------------------|----------------------------|--------------------------|-----------------------------|---------------------------|
| Sum of claims PV(Č)    | 88366                      | 85464                    | 94539                       | 97822                     |
| Mortality Rate Changes | 2.5% increase in mortality | 5% increase in mortality | 2.5% reduction in mortality | 5% reduction in mortality |
| Sum of claims PV(Č)    | 93560                      | 95725                    | 89213                       | 87031                     |

Table 4: 20 years term sensitivity test

| Discount Rate Changes  | 6.25% discount rate        | 6.5% discount rate       | 5.75% discount rate         | 5.5% discount rate        |
|------------------------|----------------------------|--------------------------|-----------------------------|---------------------------|
| Sum of claims PV(Č)    | 129899                     | 119575                   | 154361                      | 168848                    |
| Mortality Rate Changes | 2.5% increase in mortality | 5% increase in mortality | 2.5% reduction in mortality | 5% reduction in mortality |
| Sum of claims PV(Č)    | 143362                     | 145267                   | 139501                      | 137543                    |

Table 5: Whole life sensitivity test

Overall the whole life insurance product is more sensitive to the changes in discount rates, this is due to the discounts rates making a larger impact in the later policy years. The impact of the discount rate is similar to both insurance products, resulting in roughly two to three thousand Č changes in the sum of claim PV for each 0.25% change in discount rate. The sensitivity test suggests that the insurance product will be safe to small changes in the assumptions for the discount rate or mortality rates.


## Data and Data Limitations
We primarily used the Superlife Inforce Dataset and the Lumaria mortality table to assist in modelling mortality. To perform pricing, we used the interventions table to estimate the costs and benefits associated with our health benefit program, and economic data to help forecast revenue and mortality improvement. We note that, similar to current world trends, Lumaria’s economy may be unstable as the government 1-year spot rate is more than twice the 10-year spot rate.

As with any modelling task, there is a need to take advantage of external datasets to leverage our models. In addition, a comprehensive data cleaning process was conducted, which revealed some issues with the Super Inforce dataset. These included:

- Cause of death had 836 missing entries, with roughly half of these entries coming from the years 2020-2023. Having these data can help us to better analyse the key cause of deaths of policyholders and therefore choose the most effective health incentives.

- Lapse.Indicator had 6866 entries listed as “Y”, which cannot be determined based on the given key. More observations that have 0 or 1 as entry could help us to determine the lapse rates of policyholders more accurately.

- Non-exact dates for issue year, year of death, year of lapse and date of birth not given, meaning that some non-optimal assumptions were made about a policyholder’s age and risk exposure.

- Mortality table of Lumaria is combined. It will be more helpful if the mortality table is divided further down by sex, smoking status etc.

- Unable to compute the mortality rates for age groups outside 26 to 87, no observations are given for those age groups. Therefore we had to use mortality rates of the whole population provided, which may not represent the true mortality rates of those who purchase the life insurance.

- For the 20 year term insurance product, all observations should lapse in their 20th policy year. However, the actual lapse rate calculated is only 99%. This could lead to inaccurate lapse rate later in the death benefit calculating process.


## Appendix

| Year | Unmodified   | Reduced     | Savings     | Per. Policyholder (C¥) |
|------|--------------|-------------|-------------|-----------------------|
| 2004 | 372739667.3  | 304659091.8 | 68080575.42 | 24874.16              |
| 2005 | 367240511.6  | 299085812.3 | 68154699.29 | 25084.54              |
| 2006 | 392351226.6  | 320857222   | 71494004.58 | 24169.71              |
| 2007 | 417611559    | 341128364.2 | 76483194.79 | 24513.84              |
| 2008 | 382446763.2  | 312853937.9 | 69592825.36 | 24214.62              |
| 2009 | 375394941    | 307222880.4 | 68172060.6  | 22543.67              |
| 2010 | 361756136.1  | 297709430.9 | 64046705.14 | 21521.07              |
| 2011 | 356753855.5  | 293542135.9 | 63211719.63 | 20889.53              |
| 2012 | 320985534.4  | 262591228.7 | 58394305.65 | 19549.48              |
| 2013 | 328432667.5  | 268909744.3 | 59522923.22 | 19934.00              |
| 2014 | 306011468.7  | 250890305.2 | 55121163.49 | 18994.20              |
| 2015 | 287271840    | 236089371.6 | 51182468.37 | 18720.73              |
| 2016 | 265490669    | 216958864.8 | 48531804.17 | 17751.21              |
| 2017 | 248364898.2  | 203207127.4 | 45157770.86 | 18319.58              |
| 2018 | 221595917.5  | 180486367   | 41109550.55 | 16470.17              |
| 2019 | 238701298.8  | 196540360.7 | 42160938.16 | 16322.47              |
| 2020 | 210943519.1  | 170725416.4 | 40218102.69 | 15468.50              |
| 2021 | 175077595.6  | 140994899.9 | 34082695.73 | 13821.04              |
| 2022 | 136984321    | 109854867.6 | 27129453.34 | 13144.11              |
| 2023 | 99113431.34  | 78610003.86 | 20503427.48 | 10282.56              |


A.1: Table containing actuarial present value of all policies by year with and without changes in mortality due to health program changes

<p align="center">
     <img src="Plots/Inflation rates from 2001 to 2023 and rate used in the model.png" alt="image"/>
</p>
<p align="center">
     A.2: Inflation rates from 2001 to 2023 and rate used in the model

| Year | Non Smoker (No Intervention) | Smoker (No Intervention) | Smoker (Intervention) |
|------|------------------------------|--------------------------|-----------------------|
| 0    | 1957.9                       | 3361.87                  | 5551.73               |
| 1    | 1905.91                      | 3087.69                  | 1888.92               |
| 2    | 1975.52                      | 3430.62                  | 2103.66               |
| 3    | 2626.96                      | 4039.87                  | 2483.27               |
| 4    | 2746.72                      | 4400.41                  | 2711.81               |
| 5    | 2830.77                      | 3897.38                  | 2408.15               |
| 6    | 2622.72                      | 5866.48                  | 3634.07               |
| 7    | 2950.07                      | 6521.7                   | 4051.91               |
| 8    | 2794.99                      | 6918.92                  | 4312.08               |
| 9    | 3098.73                      | 10263.2                  | 6416.81               |
| 10   | 3221.84                      | 9556.81                  | 5998.7                |
| 11   | 3361.75                      | 13660.9                  | 8607.46               |
| 12   | 3476.63                      | 11898.4                  | 7532.41               |
| 13   | 3761.7                       | 19008.7                  | 12086.3               |
| 14   | 4006.31                      | 21068.6                  | 13476.6               |
| 15   | 4040.79                      | 26599.1                  | 17125.7               |
| 16   | 4339.49                      | 30168                    | 19577.8               |
| 17   | 4812.23                      | 34188.4                  | 22385.2               |
| 18   | 5514.48                      | 35221.3                  | 23361.5               |
| 19   | 5102.73                      | 43024.7                  | 28760.7               |
| 20   | 5603.34                      | 43868.9                  | 29707.4               |


A.3: 20-Year Term policy projections with and without the mortality reduction.

<p align="center">
     <img src="Plots/Comprehensive comparison of four mortality rates.png" alt="image"/>
</p>
<p align="center">
     A.4: Comprehensive comparison of four mortality rates


<p align="center">
     <img src="Plots/Dataset Mortality compared with Lumaria Mortality.png" alt="image"/>
</p>
<p align="center">
     A.5: Dataset Mortality compared with Lumaria Mortality


<p align="center">
     <img src="Plots/Dataset Mortality (Smoker) compared with Lumaria Mortality.png" alt="image"/>
</p>
<p align="center">
     A.6: Dataset Mortality (Smoker) compared with Lumaria Mortality


<p align="center">
     <img src="Plots/Comparison of smoking and non-smoking mortality rates in Dataset.png" alt="image"/>
</p>
<p align="center">
     A.7: Comparison of smoking and non-smoking mortality rates in Dataset


<p align="center">
     <img src="Plots/Dataset Mortality  (NON Smoker) compared with Lumaria Mortality.png" alt="image"/>
</p>
<p align="center">
     A.8: Dataset Mortality  (NON Smoker) compared with Lumaria Mortality


<p align="center">
     <img src="Plots/Dataset Lapse Rate per year of 20T.png" alt="image"/>
</p>
<p align="center">
     A.9: Dataset Lapse Rate per year of 20T
