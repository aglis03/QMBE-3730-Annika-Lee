Annika G. Lee
QMBE 3730
Assignment 0
January 28, 2024

library(tidyverse)

# Read in Data set
data = read.csv("loan_default_data_set.csv")


# Q1) How big is the data set? What models can I run?
1) This data set has 20,000 entries, thus being a pretty big data set. Models I can run are linear regressions, classification trees, random forest, etc.

dim(data)


# Q2) What are the column names?
2) There are 21 columns within the dataset. The names of the columns are: tot_balance, avg_bal_cards, credit_age, credit_age_good_account, credit_card_age, num_acc_30d_past_due_12_months, num_acc_30d_past_due_6_months, num_mortgage_currently_past_due, tot_amount_currently_past_due, num_inq_12_month, num_card_inq_24_month, num_card_12_month, num_auto_.36_month, uti_open_card, pct_over_50_uti, uti_max_credit_line, pct_card_over_50_uti, ind_XYZ, rep_income, rep_education, Def_ind

colnames(data)


# Q3) What are the data types?
3) Within the data set, there are 12 integer, 8 numeric, and 1 character when it comes to the variety of data types.

glimpse(data)


# Q4) How much of my data set is missing?
4) There are 3517 missing values within the data set. Columns with missing values are pct_card_over_50_uti and rep_income. We could easily drop these missing values due to there being such a small portion of them or we could easily impute values into them such as the mean of their columns.

summary(data)

sum(is.na(data))


# Q5) Visualization


# Q6) Summary Statistics
6) Mean, Variance, Max, St Dev

# tot_income
mean(data$tot_balance)
sd(data$tot_balance)
var(data$tot_balance)
max(data$tot_balance)

# avg_bal_cards
mean(data$avg_bal_cards)
sd(data$avg_bal_cards)
var(data$avg_bal_cards)
max(data$avg_bal_cards)

# credit_age
mean(data$credit_age)
sd(data$credit_age)
var(data$credit_age)
max(data$credit_age)

# credit_age_good_account
mean(data$credit_age_good_account)
sd(data$credit_age_good_account)
var(data$credit_age_good_account)
max(data$credit_age_good_account)

# credit_card_age
mean(data$credit_card_age)
sd(data$credit_card_age)
var(data$credit_card_age)
max(data$credit_card_age)

# num_acc_30d_past_due_12_months
mean(data$num_acc_30d_past_due_12_months)
sd(data$num_acc_30d_past_due_12_months)
var(data$num_acc_30d_past_due_12_months)
max(data$num_acc_30d_past_due_12_months)

# num_acc_30d_past_due_6_months
mean(data$num_acc_30d_past_due_6_months)
sd(data$num_acc_30d_past_due_6_months)
var(data$num_acc_30d_past_due_6_months)
max(data$num_acc_30d_past_due_6_months)

# num_mortgage_currently_past_due
mean(data$num_mortgage_currently_past_due)
sd(data$num_mortgage_currently_past_due)
var(data$num_mortgage_currently_past_due)
max(data$num_mortgage_currently_past_due)

# tot_amount_currently_past_due
mean(data$tot_amount_currently_past_due)
sd(data$tot_amount_currently_past_due)
var(data$tot_amount_currently_past_due)
max(data$tot_amount_currently_past_due)

# num_inq_12_month
mean(data$num_inq_12_month)
sd(data$num_inq_12_month)
var(data$num_inq_12_month)
max(data$num_inq_12_month)

# num_card_inq_24_month
mean(data$num_card_inq_24_month)
sd(data$num_card_inq_24_month)
var(data$num_card_inq_24_month)
max(data$num_card_inq_24_month)

# num_card_12_month
mean(data$num_card_12_month)
sd(data$num_card_12_month)
var(data$num_card_12_month)
max(data$num_card_12_month)

# num_auto_.36_month
mean(data$num_auto_.36_month)
sd(data$num_auto_.36_month)
var(data$num_auto_.36_month)
max(data$num_auto_.36_month)

# uti_open_card
mean(data$uti_open_card)
sd(data$uti_open_card)
var(data$uti_open_card)
max(data$uti_open_card)

# pct_over_50_uti
mean(data$pct_over_50_uti)
sd(data$pct_over_50_uti)
var(data$pct_over_50_uti)
max(data$pct_over_50_uti)

# uti_max_credit_line
mean(data$uti_max_credit_line)
sd(data$uti_max_credit_line)
var(data$uti_max_credit_line)
max(data$uti_max_credit_line)

# pct_card_over_50_uti
mean(data$pct_card_over_50_uti, na.rm = TRUE)
sd(data$pct_card_over_50_uti, na.rm = TRUE)
var(data$pct_card_over_50_uti, na.rm = TRUE)
max(data$pct_card_over_50_uti, na.rm = TRUE)

# ind_XYZ
mean(data$ind_XYZ)
sd(data$ind_XYZ)
var(data$ind_XYZ)
max(data$ind_XYZ)

# rep_income
mean(data$rep_income, na.rm = TRUE)
sd(data$rep_income, na.rm = TRUE)
var(data$rep_income, na.rm = TRUE)
max(data$rep_income, na.rm = TRUE)

# Def_ind
mean(data$Def_ind)
sd(data$Def_ind)
var(data$Def_ind)
max(data$Def_ind)
