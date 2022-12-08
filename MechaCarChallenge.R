# Load in the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables
# (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
model_summary <- summary(model) # p-value is 5.35e-11(There is no sufficient evidence to reject our null hypothesis), 
# r-squared value is 0.7149(Approx 72% of the predictions will be correct) - the slope of our linear model is
# not zero.

# Calculate Pearson correlation coefficient to compare to rsquared value to confirm accuracey.
plt <- ggplot(MechaCar_mpg,aes(x=ground_clearance,y=mpg))

plt + geom_point()

cor(MechaCar_mpg$ground_clearance,MechaCar_mpg$mpg)
