# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Insert screenshots of output

The following veriables/coefficients provided a non-random amount of variance to the mpg values in the dataset:
        - Intercept
        - Vehicle Length
        - Ground_Clearance
The slope of the linear model is not considered to be zero because the p-value is less than the standard of 0.05.  
This linear model seemingly predicts he mpg of MechaCar prototypes effectively. The r-squared value is 71.49% which is relatively high.

## Summary Statistics on Suspension Coils

Insert screenshots of total_summary and lot_summary dataframes

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total with the variance being 62.29 as shown in the total_summary dataframe. However, when looking at the lot_summary dataframe it is shown that Lot3 has a variance of 170.29. 

## T-Tests on Suspension Coils
I created three tables to hold each manufacturing lot, respectively. Then I ran a t.test on each to compare the mean of the PSI for each lot against the population mean of 1,500 pounds per square inch.

Insert screenshot of first t-test

I ran the t-test to compare the PSI across all manufacturing lots against the population mean of 1,500 pounds per square inch. The p-value is 1, which is above the assumed significance level of 0.05. Or it is 100%, meaning they match exactly. Therefore, there is not enough evidence to reject the null hypothesis and I can confirm our two samples are not statistically different.

Insert screenshot of lot1 t-test output

For Lot 1, the p-value is 1.56e-11 which is significantly lower than the assumed significance level of 0.05. Therefore there is enough evidence to reject the null hypothesis and I can confirm that these two samples are statistically different.

Insert screenshot of lot2 t-test output

For Lot2, the p-value is 0.0005911 which is lower than the assumed significance level of 0.05. Therefore there is enough evidence to reject the null hypothesis and I can confirm that these two samples are statistically different.

Insert screenshot of lot3 t-test output

For Lot 3, the p-value is 0.1589 which is above the assumed significance level of 0.05. Therefore, there is not enough evidence to reject the null hypothesis and I can confirm these two samples are not statistically different.

## Study Design: MechaCar vs Competition

In my design study, I would test the miles per gallon means of the MechaCar against the miles per gallon means of the competition vehicles.

- Null Hypothesis: The two samples are not statistically different.
- Alternative Hypothesis: The two samples are statistically different.

I would create sample tables of each dataset then use the t.test() function to compare them and determine the p-value, in which will help me determine if I should reject or accept the null hypothesis. The assumed significance would be 5% or a p-value of 0.05. This will help determine if there a statistical difference between the two. I would also be interested in what caused the difference, if one is found. Further data and analyses would need to be completed.
What data is needed to run the statistical test?

To create the sample tables, I would need the miles per gallon amounts for 50 randomly selected results in the MechaCar data, then 50 randomly selected results of a competition vehicle.  A multiple linear model could be created to compare the MechaCar against multiple competition vehicles in order to determine which one(s) to use in the comparison. A two-sample t.test would be run on the two sample tables and the p-value found to determine if the null hypothesis is rejected or accepted.