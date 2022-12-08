# Load dplyr package
library(dplyr)

#Import and read "MechaCar_mpg.csv" file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCar

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) 

# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))

#Import and read "Suspension_Coil.csv" file
Suspension_coil<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
Suspension_coil

# Creates a total_summary dataframe
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI),  .groups = 'keep')
total_summary 

# Group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI),  .groups = 'keep')
