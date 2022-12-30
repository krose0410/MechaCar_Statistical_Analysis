# MechaCar_Statistical_Analysis
## Overview
The purpose of this project is to use R to analyze MechaCar data to identify key metrics and trends that will help the manufacturing team make decisions about the production process. The data set contains information about the MechaCar prototypes, including vehicle length, weight, spoiler angle, drivetrain, and ground clearance. The data set also contains information about the miles per gallon (MPG) of each prototype. The MechaCar team is interested in understanding how the different variables affect the MPG of the MechaCar prototypes.
## Linear Regression to Predict MPG
<img width="534" alt="Fig1" src="https://user-images.githubusercontent.com/109715441/210107451-5c9be2af-8785-452b-b904-49073605dae9.png">

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
Two variables in this dataset provide a non-random amount of variance: vehicle length and ground clearance. The p-value for each of these variables is less than 0.05, which indicates that they do provide some amount of corelation to the mpg values in the dataset. The p-value of vehicle weight, spoiler angle, and AWD are significantly further from 0.05, which indicates that they do not provide a corelation to the mpg values in the dataset.

**Is the slope of the linear model considered to be zero? Why or why not?**

The p-value of the linear model is 5.35e-11, which is significantly less than 0.05. This indicates that the slope of the linear model is not zero. This means that the linear model does provide corelation to the mpg values in the dataset.
**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

This linear model predicts the mpg of MechCar prototypes relatively effectively. The R-squared value is 0.7149, which indicates that 71.49% of the mpg values can be predicted by the linear model. This is a relatively high R-squared value, which indicates that the linear model is a good fit for the data.

## Summary Statistics on Suspension Coils
<img width="352" alt="Fig2" src="https://user-images.githubusercontent.com/109715441/210107667-39924039-0728-487f-9380-e271aff10c75.png">
<img width="497" alt="Fig3" src="https://user-images.githubusercontent.com/109715441/210107695-cd9b22ce-cfe8-4841-8c06-38252ec12f9b.png">

**Does the current manufacturing data meet the design specification that the variance of the suspension coils must not exceed 100 pounds per square inch in all manufacturing lots in total and each lot individually? Why or why not?**

The variance of the suspension coils in all manufacturing lots is 62.29, which does not exceed the required specification. However, breaking the summary statistics down by lot shows that lots 1 and 2 have significantly lower variances than the whole, but lot 3 has a variance of 170.29, which is significantly higher than the required specification. This indicates that the current manufacturing data does not meet the design specification for lot 3.

## T-Tests on Suspension Coils

<img width="411" alt="Fig4" src="https://user-images.githubusercontent.com/109715441/210108057-790cbde0-b4b8-4e36-8981-2a6587318518.png">

Performing a t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1500 returns a p-value of 0.06, which is higher than 0.05 and indicates that the PSI across all manufacturing lots is statistically different from the population mean of 1500. However, this is not a largely significant difference as the t-test estimates a mean of 1498.78.
<img width="424" alt="Fig5" src="https://user-images.githubusercontent.com/109715441/210108111-d8299fe3-c219-46a2-9237-a9e334f6c291.png">

Lot 1 Test 

<img width="417" alt="Fig6" src="https://user-images.githubusercontent.com/109715441/210108147-3d933eb4-eb47-488c-92de-cafa96a506c5.png">
Lot 2 Test
<img width="417" alt="Fig7" src="https://user-images.githubusercontent.com/109715441/210108164-1ef50d34-5485-4148-9cc0-878a885e98be.png">
Lot 3 Test

Similar to the summary statistics on each lot, performing a test on each individual lot reveals their substantial differences. While lot 1 shares the populations mean of 1500, and lot 2 has a difference of only 0.2, the mean of lot 3 is 1496.14, which is significantly different from the population mean of 1500.

## Study Design: MechaCar vs Competition

**Metrics to be tested**

When comparing the MechaCar to its competition, the most important independent metrics to test would be the resale value, annual maintenance cost, fuel efficiency, safety feature rating, and overall consumer rating. For this analysis, the dependent variable would be the cost of the vehicle.

**Null and Alternative Hypothesis**

Null: Hypothesis: The MechaCar is not statistically different from the competition in terms of resale value, annual maintenance cost, fuel efficiency, safety feature rating, and overall consumer rating. And these metrics have no corelation to the cost of the vehicle.

Alternative: The MechaCar is statistically different from the competition in terms of cost, resale value, annual maintenance cost, fuel efficiency, safety feature rating, and overall consumer rating. And these metrics have a positive corelation to the cost of the vehicle.

**Statistical Test to be used**

A multiple linear regression test can be used to test the corelation between the independent variables and the dependent variable. This test will allow us to determine which independent variables have a positive corelation to the cost of the vehicle, and which independent variables have a negative corelation to the cost of the vehicle. This test will also allow us to determine if the MechaCar is statistically different from the competition in terms of cost, resale value, annual maintenance cost, fuel efficiency, safety feature rating, and overall consumer rating.

**Data to be used**

The data needed to preform this analysis would be the cost of the vehicle, its average resale value, its annual maintenance cost, its average miles per gallon, its safety feature rating and its overall consumer rating. Data from a significant number of competitors cars at similar price points would also be needed to preform this analysis.
