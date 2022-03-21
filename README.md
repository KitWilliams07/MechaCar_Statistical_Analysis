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

![alt text](https://raw.githubusercontent.com/KitWilliams07/MechaCar_Statistical_Analysis/main/Multiple_Linear_Regression/Resources/plots.png)

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Not a great model 
- Intercept --> when an intercept is statistically significant, that means it plays a large role in the model when the other predictors are zero. This could mean that there are important predictive variables for the model that we have left out. 
- Half the coeffeicients have a p-value greater than threshold, so they are deemed statistically insignificant and should not be included in the model.
