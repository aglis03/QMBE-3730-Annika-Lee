# Annika Lee
# QMBE 3730
# Linear Regression Assignment: Part 2
# March 17, 2024



### Q1
library(tidyverse)
library(dplyr)
library(modelr)
library(broom)
library(ggplot2)
library(purrr)


# Read in data
df <- read.csv("/Users/annikalee/Downloads/Advanced Business Analytics/Student_Performance.csv")


# Exploratory Data Analysis:
The dataset has a total of 10000 rows and 6 columns. We have data types that consist of integer, character, and numeric 
types. There are no missing values, thus not having to impute any values into the dataset. One thing we may have to 
take into consideration would have to be the strong correlation present between Performance Index and Previous Scores 
of 0.9152. Since one of our variables is categorical, we will have to convert this it into a dummy variable to help our model.


# Summary Statistics
summary(df)

# Data Types
sapply(df, class)

# Dimensions
dim(df)

# Correlation
df %>%
  keep(is.numeric) %>%
  cor()

plot(df$Performance.Index, df$Previous.Scores)

# Column Names
ls(df)

# Missing Values
is.na(df)
sum(is.na(df))



### Q2
I would fit a multiple linear regression model for this data set. Our data has five independent variables (Hours Studied, 
Previous Scores, Extracurricular Activities, Sleep Hours, Sample Question Papers Practiced) present to help us estimate our 
dependent variable (Performance Index). Each of these variables in a way will help us determine our estimations and our model.



### Q3

# 70% of the data is the training set and 30% is the testing set.
test_set <- sample_frac(df, 0.3)
training_set <- filter(df, !(row.names(df)%in% row.names(test_set)))

# The testing set has 3000 observations.
dim(test_set)

# The training set has 7000 observations.
dim(training_set)



### Q4

# Fit the model on the training set
model1 <- lm(Performance.Index ~ ., data = training_set)

# View model
summary(model1)


# Performance Index = -34.1188 + 2.8565*(Hours Studied) + 1.0186*(Previous Scores) + 0.6051*(Extracurricular Activities) + 0.4825*(Sleep Hours) + 0.1967*(Sample Question Papers Practiced) 

# Coefficients
summary(model1)$coef

B0 -> y-intercept = -34.1188
-> The value of Performance Index will be -34.1188 when all independent variables are at zero.

B1 -> slope = 2.8565
-> For any one-unit change in Hours Studied, Performance Index changes by 2.8565.

B2 -> slope = 1.0186
-> For any one-unit change in Previous Scores, Performance Index changes by 1.0186.

B3 -> slope = 0.6051
-> For any one-unit change in Extracurricular Activities, Performance Index changes by 0.6051.

B4 -> slope = 0.4825
-> For any one-unit change in Sleep Hours, Performance Index changes by 0.4825.

B5 -> slope = 0.1967
-> For any one-unit change in Sample Question Papers Practiced, Performance Index changes by 0.1967.



### Q5
R-Squared -> 0.9888
-> This model is a good fit for our r-squared value is quite high. This helps us indicate that 98.88% of the variation in
Performance Index can be explained by this linear regression model



### Q6
predictions <- model1 %>% predict(test_set)

predictions

### Q7

# RMSE for test set
RMSE(predictions, test_set$Performance.Index)

# R-Squared for test set
R2(predictions, test_set$Performance.Index)




