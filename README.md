# MechaCar_Statistical_Analysis


## Multiple Linear Regression to Predict MPG

The dataset used includes specifications on a soon to be created mecha car: vehicle length and weight, AWD, Ground Clearance, and Spoiler Angle. These different variables were used in the regression model to try and estimate the MPG. 
Below is a screenshot of the Multiple Linear Regression Model Output. 

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/stats.png)

The p-value's of the multiple linear regression output represents the probability that each coefficient contributes random variance to the model. So a lower p-value would mean it is statistically unlikely that the variable contributes variance due to randomness. As a result, a small p-value means that the variable instead has a direct and significant impact on the linear model. 

From the screenshot, you can see that the lowest p-value coefficients are...

Vehicle Length = 2.60e-12
Intercept = 5.08e-08
Ground Clearance = 5.21e-08

As a result of the model, a few questions could be asked to better understand what the model predicted...

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Assuming we are using a signifiance level of of 5%, any p-value that is less than 0.05 will prove statistically significant to the model. So, that leaves Vehicle Lenght, Ground Clearance, and the Intercept as the variables that provided a non-random amount of variance. 

Is the slope of the linear model considered to be zero? Why or why not?
- To better highlight this question, partial regression plots were made to show the slope each predictor variable had in relation to MPG. 

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/Plots.png)
(These plots are created for MPG vs each predictor variable while holding the other predictor variables constant) 

- Breaking apart the Multiple Linear Regression Model into each predictor variable and MPG plot allows us to see the slope each relationship has. From the output of the model, there are estimates of each coefficient / variable within the model...

vehicle_length    6.267e+00  
vehicle_weight    1.245e-03  
spoiler_angle     6.877e-02   
ground_clearance  3.546e+00 
AWD              -3.411e+00 

- These estimates represent the slope of the partial regression plot. For example, MPG vs Vehicle Length shows a strong positive slope, reflected by the value above of 6.267. Additionally, the MPG vs AWD plot shows a negative slope, shown by the -3.411 value. We can also see from these plots that Vehicle Weight and Spoiler Angle have essentially a zero slope since their values are 1.245e-03 and 6.877e-02 respectively. 

- So based on these slope values and the p-values discussed above, each variable contributes a different amount to this model. It is hard to say the slope of the entire model is zero. Certain variables (Vehicle Weight and Spoiler Angle) show a slope of zero, however these variables are considered significant to the system. From the partial regression plots and p-values, the only important variables are Vehicle Length and Ground Clearance. These variables show a positive, non-zero slope, so as the variable increases the MPG does as well. 


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Overall this is not a great model. For starters, many of the coefficients have a p-value greater than the threshold. These variables are deemed statistically insignificant and should not be included in the model. In simple terms, that means these variables are not good indicators of MPG for this car. 
- Additionally, since the intercept is statistically significant, that means it plays a large role in the model when the other predictors are zero. Since the intercept has such a large effect on this model, this could mean that there are important predictive variables for the model that we have left out.
- So to improve this model, Vehicle Lenght and Ground Clearance should remain and the other variables should be removed from the model. Possible other predictor variables that could be used are an Aerodynamics Rating or engine size. 


## Summary Statistics on Suspension Coils

Using the Suspension Coils dataset, some high level summary statistics were used to better understand the data. The statistics were generated from the whole dataset of PSI readings for every vehicle across the 3 different lots.

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/total_stats.png)

The point of these statistics are to ensure there is consistency across the manufacturing plants for suspension coils. In order to figure this out, a more descriptive table had to be created.  

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/lot_stats.png)

This data frame displays the same info but filtered based on the Lot. From this, Lots 1 and 2 are consistent and operating as intended. However, Lot 3 seems to have extreme values both far above and below the normal mean. This is because the mean and median have not changed that much compared to the normal, however the variance and SD amongst the data has changed drastically. Something needs to be fixed in Lot 3 in order to keep it up to standard with the other 2. However, as a collective unit the overall variance is still under 100 so they still meet design specifications when considered together. 
