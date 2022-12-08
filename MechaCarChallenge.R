# Load in the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables
# (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(model) # p-value is 5.35e-11(There is sufficient evidence to reject our null hypothesis), 
# r-squared value is 0.7149(Approx 72% of the predictions will be correct) - the slope of our linear model is
# not zero.

Suspension_Coil <- read.csv("Suspension_Coil.csv",check.names = F,stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function to
# get the mean, median, and standard deviation of the suspension coil's PSI column.
total_summary <- Suspension_Coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize
# functions to group each manufacturing lot by the mean, median, variance, and standard deviation
# of the suspension coil's PSI column
lot_summary <- Suspension_Coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Write an RScript using the t.test() function to determine if the PSI across all manufacturing
# lots is statistically different from the population mean of 1,500 pounds per square inch.

# Create sample table
sample_table <- Suspension_Coil %>%
  sample_n(50)

# Compare means of sample_table and population
t.test(lot_summary$Mean,mu=mean(Suspension_Coil$PSI)) # p-value is 1


# Write three more RScripts using the t.test and subset functions to determine if the PSI for
# each manufacturing lot is statistically different from the population mean 
# of 1,500 pounds per square inch.

# Create table for each lot
lot1_table <- subset(Suspension_Coil,Manufacturing_Lot=="Lot1")
lot2_table <- subset(Suspension_Coil,Manufacturing_Lot=="Lot2")
lot3_table <- subset(Suspension_Coil,Manufacturing_Lot=="Lot3")

# Compare mean each lot to population mean
t.test(lot1_table$PSI,mu=mean(Suspension_Coil$PSI)) #p-value is 1.568e-11
t.test(lot2_table$PSI,mu=mean(Suspension_Coil$PSI)) #p-value is 0.0005911
t.test(lot3_table$PSI,mu=mean(Suspension_Coil$PSI)) #p-value is 0.1589
