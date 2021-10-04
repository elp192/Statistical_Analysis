# Import package
library(dplyr)

# Read data
table<-read.csv(file='data/MechaCar_mpg.csv')

# Perform multiple linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=table)

# Determine summary statistics 
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=table))

