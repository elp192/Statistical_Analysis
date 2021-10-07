# Statistical Analysis
## Project Overview
In this project, statistical testings are performed to analyze the data from MechaCar company as the manufacturing team faces the production problem in the company. This analysis provides the team to understand the issues better.
The following resources and software are utilized in the project:
- Data:[MechaCar_mpg.csv](https://github.com/elp192/Statistical_Analysis/blob/0feb2c85ec99d25d1315060dc7d47520b740f9a8/data/MechaCar_mpg.csv), [Suspension_Coil.csv](https://github.com/elp192/Statistical_Analysis/blob/0feb2c85ec99d25d1315060dc7d47520b740f9a8/data/Suspension_Coil.csv)
- Software:RStudio

## Results
### Multi Linear Regression 
In this section, the multi-linear regression is performed to determine the relationship between mpg and other variables (i.e., vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD) in [MechaCar_mpg.csv](https://github.com/elp192/Statistical_Analysis/blob/0feb2c85ec99d25d1315060dc7d47520b740f9a8/data/MechaCar_mpg.csv) database. Figure 1 shows the summary statistics.

<p img align="center" width="100%">
<img width="517" alt="linear_regression" src="https://user-images.githubusercontent.com/85843401/135872766-29394d0f-e421-4172-9a22-1eb17fc0b673.png">
<figcaption>Figure 1: Summary statistics related to performed multi linear regression.</figcaption></figure/> 
<p align="center">

The following conclusions can be drawn from summary statistics (Figure 1), :<br>
- The Pr(>|t|) column in summary statistics represents the p-value for the t-test. When the p-value is less than 0.05, it is unlikely that a variable contributes to a random variance to a linear model. Figure 1 shows that p-values for vehicle length, ground clearance, and interception are less than 0.05, which means that they provide non-random variance to an mpg linear model and have significant impacts on the mpg. We can conclude that in our case that the interception is statistically significant; some other variables may be ignored in the datasets having impacts on the mpg variations, and they need to be considered in the analysis.<br>
- As the interception is statistically significant (p-value<0.5), the linear model slope is non-zero, and the null hypothesis (H0)(i.e., the linear model slope is zero) is rejected.<br>
- From figure 1, we can see that the R-square is about 0.71, representing that 71% of variations in mpg can be explained/predicted by the linear model. This value tells us there is a strong positive relationship; however, the contributions of some other variables that are not collected in the datasets, disregarded in this model. So, to accurately analyze the model, other variables can be included in the analysis.<br>
