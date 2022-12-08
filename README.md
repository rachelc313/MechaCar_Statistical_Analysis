# MechaCar_Statistical_Analysis

# READ OVER AND FORMAT BEFORE TURNING IN

## Linear Regression to Predict MPG

Insert screenshot of output

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    -The following veriables/coefficients provided a non-random amount of variance to the mpg values in the dataset:
        - Intercept
        - Vehicle Length
        - Ground_Clearance
- Is the slope of the linear model considered to be zero? Why or why not?
    - The slope of the linear model is not considered to be zero because the p-value is less than the standard of 0.05.  
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - This linear model seemingly predicts he mpg of MechaCar prototypes effectively. The r-squared value is 71.49% which is relatively high.

## Summary Statistics on Suspension Coils

Insert screenshots of total_summary and lot_summary dataframes

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 punds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total with the variance being 62.29 as shown in the total_summary dataframe. However, when looking at the lot_summary dataframe it is shown that Lot3 has a variance of 170.29. 

## T-Tests on Suspension Coils

- Briefly summarize your interpretation and findings for the t-test results.

Insert screenshot of first t-test
    - I ran the t-test to compare the PSI across all manufacturing lots against the population mean of 1,500 pounds per square inch. The p-value is 1, which is above the assumed significance level of 0.05. Or it is 100%, meaning they match exactly. Therefore, there is not enough evidence to reject the null hypothesis and I can confirm our two samples are not statistically different.

I created three tables to hold each manufacturing lot, respectively. Then I ran a t.test on each to compare the mean of the PSI for each lot against the population mean of 1,500 pounds per square inch.

Insert screenshot of lot1 t-test output
    - For Lot 1, the p-value is 1.56e-11 which is significantly lower than the assumed significance level of 0.05. Therefore there is enough evidence to reject the null hypothesis and I can confirm that these two samples are statistically different.

Insert screenshot of lot2 t-test output
    -For Lot2, the p-value is 0.0005911 which is lower thanthe assumed significance level of 0.05. Therefore there is enough evidence to reject the null hypothesis and I can confirm that these two samples are statistically different.

Insert screenshot of lot3 t-test output
    -For Lot 3, the p-value is 0.1589 which is above the assumed significance level of 0.05. Therefore, there is not enough evidence to reject the null hypothesis and I can confirm these two samples are not statistically different.