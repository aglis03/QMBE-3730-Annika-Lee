# Annika Lee
# QMBE 3730
# Linear Regression Assignment: Part 1
# March 3, 2024


## Q1
Linear Regression assumes that there is a relationship between a dependent variable (Y) and an indeoendent variable (X) that is approximated by a straight line.

There are a four assumptions of linear regression;
  1. Linearity -> The relationship between X and Y are linear.
  2. Homoscedasticity -> The variance of residual is the same for all levels/values of X.
  3. Independence -> All independent variables (Xs) are independent of each other.
  4. Normality -> For any value of X, Y us normally distributed.


## Q2
B0 -> y-intercept = 15
  -> The value of heart disease is 15 when the value of effetiveness of biking and smoking are both equal to zero.

B1 -> slope = 0.2
  -> For any one-unit change in biking, heart disease changes by 0.2, holding the value of 0.178 constant.

B2 -> slope = 0.178
  -> For any one-unit change in smoking, heart disease changes by 0.178, holding the value of 0.2 constant.


## Q3
sales = 3.53 + 0.046*youtube + 0.189*facebook - 0.001*newspaper


## Q4

library(tidyverse)
library(dplyr)
library(modelr)
library(broom)
library(ggplot2)

# read in data
df <- read.csv("Ice_Cream_Sales_temperatures.csv")

a. Exploratory Data Analysis
When looking at our exploratory data analysis, we hae a total of 365 rows and 2 columns. The data type for Temperature are integers and Ice Cream Profits are numeric. 
We can see that we have no missing values within out dataset, thus not needing to input any values into the dataset. The shape of our data is very linear, shwoing us 
a highly correlated relationship. This makes sense for ice cream sales would increase as the temperature increases due to the demand increase in a real world scenario.

# Summary Statistics
summary(df)

# Data Types
sapply(df, class)

# Dimensions
dim(df)

# Shape
plot(df)

# Column Names
ls(df)

# Missing Values
is.na(df)
sum(is.na(df))


b. Split the Data into Training and Testing sets
# 70% of the data is the training set and 30% is the testing set.

test_set <- dplyr::sample_frac(df, 0.3)
training_set <- filter(df, !(row.names(df)%in% row.names(test_set)))

# The tetsing set has 110 observations.
dim(test_set)

# The training set has 255 observations.
dim(training_set)


c. Fit the Regression Model

# Fit model on training set
model1 <- lm(Ice.Cream.Profits ~ ., data = training_set)

# View model
summary(model1)

# Model Coefficients
B0 -> y-intercept = -33.69
-> The value of Ice Cream Profits will be -33.69 when Temperature is at zero. 

B1 -> slope = 1.19
-> For any one-unit change in Temperature, Ice Cream Profits changes by 1.19.


d.
I would fit a simple linear regression model with this dataset. Our data only has one independent variable (Temperature) present to help us estimate our dependent 
variable (Ice Cream Profits). We can see that our independent variable is indeed influencing our dependent variable.


