# Libraries
library(dplyr)
library(car)

# Deliverable 1
mecha_car <- read.csv('MechaCar_mpg.csv')

multiple_regression_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)
summary(multiple_regression_model)

avPlots(multiple_regression_model)
