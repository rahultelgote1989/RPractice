########################################################################################################
## Filename: PIPE_Operator.R
## Author: Rahul Telgote
## Date: 15/10/2016
########################################################################################################
## This operator allows you to pipe the output from one function to the input of another function.
## Instead of nesting functions (reading from the inside to the outside), the idea of of piping is
## to read the functions from left to right.

library(dplyr)
msleep <- read.csv("C:\\Users\\rWX311568\\Documents\\R-practice\\dplyr\\datasets\\msleep_ggplot2.csv")

## Select data from datasets 
msleep %>% select(name, sleep_total)
msleep %>% select(name, sleep_total) %>% head()
