# Statistical Analysis
## Project Overview
In this project, statistical testings are performed to analyze the data from MechaCar company as the manufacturing team faces the production problem in the company. This analysis provides the team to understand dataset better.
The following resources and software are utilized in the project:
- Data: [MechaCar_mpg.csv](https://github.com/elp192/Statistical_Analysis/blob/0feb2c85ec99d25d1315060dc7d47520b740f9a8/data/MechaCar_mpg.csv), [Suspension_Coil.csv](https://github.com/elp192/Statistical_Analysis/blob/0feb2c85ec99d25d1315060dc7d47520b740f9a8/data/Suspension_Coil.csv)
- Software: RStudio

## Results
### Multi Linear Regression 
In this section, the multi-linear regression is performed to determine the relationship between mpg and other variables (i.e., vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD) in [MechaCar_mpg.csv](https://github.com/elp192/Statistical_Analysis/blob/0feb2c85ec99d25d1315060dc7d47520b740f9a8/data/MechaCar_mpg.csv) database. Figure 1 shows the summary statistics.

<p img align="center" width="100%">
<img width="500" alt="linear_regression" src="https://user-images.githubusercontent.com/85843401/135872766-29394d0f-e421-4172-9a22-1eb17fc0b673.png">
<figcaption>Figure 1: Summary statistics related to performed multi linear regression.</figcaption></figure/> 
<p align="center">

The following conclusions can be drawn from summary statistics (Figure 1), :<br>
- The Pr(>|t|) column in summary statistics represents the p-value for the t-test. When the p-value is less than 0.05, it is unlikely that a variable contributes to a random variance to a linear model. Figure 1 shows that p-values for vehicle length, ground clearance, and interception are less than 0.05, which means that they provide non-random variance to an mpg linear model and have significant impacts on the mpg. We can conclude that in our case that the interception is statistically significant; some other variables may be ignored in the datasets having impacts on the mpg variations, and they need to be considered in the analysis.<br>
- As the interception is statistically significant (p-value<0.5), the linear model slope is non-zero, and the null hypothesis (H0)(i.e., the linear model slope is zero) is rejected.<br>
- From figure 1, we can see that the R-square is about 0.71, representing that 71% of variations in mpg can be explained/predicted by the linear model. This value tells us there is a strong positive relationship; however, the contributions of some other variables that are not collected in the datasets, disregarded in this model. So, to accurately analyze the model, other variables can be included in the analysis.<br>

### Summary Statistics on Suspension Coils
The suspension coil dataset includes various production lots. The company's design specifications emphasize that the suspension coils variance should not be more than 100 pounds per square inch. The summary statistics on suspension coils for all lots and each lot are represented in Figures 2 and 3, respectively, to determine whether the design specifications are met or not. As can be seen in figure 2, the variance is about 62 PSI which satisfies the requirement exception (i.e., variance less than 100 PSI). Figure 3 shows that for lots 2 and 3, the variance is about 0.98 and 7.5 PSI, respectively, and they do not exceed the 100 PSI; however, for lot3 the variance is approximately 170 PSI and does not meet the design requirement.
  
  
<p img align="center" width="100%">
  <img width="333" alt="total_summary" src="https://user-images.githubusercontent.com/85843401/136432005-5e02c6d5-83d9-4bf8-98e0-b1d7609be307.png">
<figcaption>Figure 2: Summary statistics related to suspension coils.</figcaption></figure/> 
<p align="center">
  
  
<p img align="center" width="100%">  
  <img width="554" alt="lot_summary" src="https://user-images.githubusercontent.com/85843401/136432020-1a5e99b8-23e1-4376-abf0-9ef284ce27bc.png"> <figcaption>Figure 3: Summary statistics related to suspension coils for each lot.</figcaption></figure/> 
<p align="center">
  
### T-Tests on Suspension Coils
Various t-tests are applied on the suspension coils dataset to investigate whether all manufacturing lots and each lot differ from a population mean of 1500 PSI. Figure 4 represents that the p-value is 0.06 and is more than a significant level (i.e., >0.05). So, there is not enough evidence to reject the null hypothesis (i.e., there is no statistical difference between the mean of suspension coil data and population mean of 1500 PSI). Also, Figure 5 represents that the p-value for manufacturing lots1 and 2 is 1 and 0.6, respectively, which are more than significant level (i.e., >0.05), and we fail to reject the null hypothesis; however, the p-value for lot 3 is 0.04 and less than 0.05 (<0.05). So, we have sufficient evidence to reject the null hypothesis. We can conclude that the means of all manufacturing lots and lots1 and 2 are not statistically different from the population mean of 1500 PSI. In contrast, the mean of lot3 is statistically different from the population mean of 1500 PSI.
  
<p img align="center" width="100%">  
  <img width="350" alt="t_test_totalLot" src="https://user-images.githubusercontent.com/85843401/136450833-752d0fb7-8db2-4aa3-afa7-dbe829d8702d.png"><figcaption>Figure 4: T-test related to all manufacturing lots.</figcaption></figure/> 
  
<p img align="center" width="100%">  
  <img width="350" alt="t_test_lot1" src="https://user-images.githubusercontent.com/85843401/136450857-05f13649-756a-41ad-9d3a-adc5adfec3e3.png">
  <img width="355" alt="t_test_lot2" src="https://user-images.githubusercontent.com/85843401/136450880-6282570f-52ed-485a-af82-66ef5926570c.png">
  <img width="350" alt="t_test_lot3" src="https://user-images.githubusercontent.com/85843401/136450899-21005f69-67bb-4840-879e-6cbfd71e9a3c.png">
<figcaption>Figure 5: T-test related to each manufacturing lot. Left-upper: lot1, Rigth-upper: lot2, Left-below: lot3.</figcaption></figure/> 
<p align="center">
  
### Study Design: MechaCar vs Competition
Evaluating and comparing the performance of MechaCar company's vehicles with other companies' vehicles can be worthful. This can provide clients with more information and impacts on their requests for the vehicles. So, the statistical study can be designed as follows:
- Metrics:<br>
  Several metrics ranging from fuel efficiency to cost can be tested. The two metrics that are selected in this study are fuel efficiency and safety rating, as they have significant effects on the environment and humans, respectively.<br> 
- Hypothesis:<br>
  Null hypothesis (H0): There is no difference between the means of each selected metric in MechaCar company's vehicles and other companies (the difference is zero).<br>
  Alternative hypothesis (Ha): There are differences between the means of each selected metric in MechaCar's vehicles and other companies(the difference is not zero).<br>
- Test:<br>
  ANOVA test can be applied to determine whether the difference between the group of data in MechaCar company's metrics is statistically different from other companies or not.<br>
  If we have sufficient evidence to reject the null hypothesis, we can conclude that there are statistical differences between MechaCar and other companies' metrics.<br>
- Data:<br>
  The data relating to MechaCar company and other companies are needed to be collected, and for our specific test, we need to have the continuous data type.<br>
  
  
