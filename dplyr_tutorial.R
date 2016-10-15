########################################################################################################
## Filename: dplyr_tutorial.R
## Author: Rahul Telgote
## Date: 15/10/2016
########################################################################################################

#install.packages("downloader")
library(dplyr)
#library(downloader)
#url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
#filename <- "msleep_ggplot2.csv"
#if (!file.exists(filename))
msleep <- read.csv("C:\\Users\\rWX311568\\Documents\\R-practice\\dplyr\\datasets\\msleep_ggplot2.csv")


## SELECT Examples:
#=========================================================================================================
## select few columns from datasets using filter
sleepData <- select(msleep, name, sleep_total)
head(sleepData)

## Negative Indexing
## to select all columns EXCEPT a specific column, use the "-" 'Substraction Operator'
head(select(msleep, -name, -vore))

## Range(aka: Colon Operator)
head(select(msleep, name:order))

## Select Columns with 'NAME'
## select all columns that start with the 'sl'
head(select(msleep, starts_with("sl")))
head(select(msleep, starts_with("b")))

## select all columns that ends with specific character
head(select(msleep, ends_with("t")))
head(select(msleep, ends_with("e")))

## select columns that contains a character string
print("Example of contains clause")
head(select(msleep, contains("e")))
head(select(msleep, contains("ee")))

## select columns that match a regular expression
print("Example of select with regular expression")
print("select column names that ends with 'e'")
head(select(msleep, matches("*e$")))

## select column names that are from a group of names
print("select columns from the group of names")
head(select(msleep, one_of("name", "vore")))
