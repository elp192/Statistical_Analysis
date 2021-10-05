# Import package.
library(dplyr)

# Read MechaCar_mpg data.
table1<-read.csv(file='data/MechaCar_mpg.csv')

# Perform multiple linear regression.
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=table1)

# Determine summary statistics.
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=table1))

# Read Suspension_Coil data.
table2 <- read.csv(file='data/Suspension_Coil.csv')

# Create total summary (mean, median, variance, and std).
total_summary<-table2 %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create lot summary.
lot_summary<- table2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .group='keep')

# Determine if the PSI across manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(table2$PSI,mu=1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(table2,Manufacturing_Lot=Lot1)$PSI,mu=1500)

t.test(subset(table2,Manufacturing_Lot=Lot2)$PSI,mu=1500)

t.test(subset(table2,Manufacturing_Lot=Lot3)$PSI,mu=1500)





