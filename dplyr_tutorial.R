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

## FIlter Examples:
#===============================================================================================

## filter the rows for mammals that sleep a total of more that 15 hours
print("filter mammals those sleep more that 15 hours")
head(filter(msleep, sleep_total >= 15))

print("filter mammals that sleep a total of more than 16 hours and have body weight of greater than 1Kg.")
filter(msleep, sleep_total >= 15, bodywt >= 1)

print("Filter rows for mammals in the Perissodactyla and Primates taxonomic order")
filter(msleep, order %in% c("Perissodactyla", "Perimates"))

## Arrange Examples:
#===============================================================================================
print("Arrange the datasets in the order of specific column")
msleep %>% arrange(order) %>% head()

## Arrange  the rows by the taxonomic order and then arrange the rows by sleep_total. 
## Finally show the head of the final data frame
msleep %>% select(name, order, sleep_total) %>% arrange(order, sleep_total) %>% head()

## arrange the rows in the sleep_total column in a descending order. For this, use the function desc()
msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, desc(sleep_total)) %>%
  filter(sleep_total >= 16)

## Mutate Examples:
## =====================================================================================
## The mutate() function will add new columns to the data frame. Create a new column called
## rem_proportion which is the ratio of rem sleep to total amount of sleep.
msleep %>%
  mutate(rem_porportion = sleep_rem / sleep_total) %>%
  head()

## You can many new columns using mutate (separated by commas). Here we add a second column
## called bodywt_grams which is the bodywt column in grams.
msleep %>%
  mutate(rem_proportion = sleep_rem / sleep_total,
         body_grams = bodywt * 1000) %>%
  head()

## Summarize Examples:
## =====================================================================================
## The summarise() function will create summary statistics for a given column in the data 
## frame such as finding the mean. For example, to compute the average number of hours of 
## sleep, apply the mean() function to the column sleep_total and call the summary value avg_sleep.

msleep %>%
  summarise(avg_sleep = mean(sleep_total))

## There are many other summary statistics you could consider such sd(), min(), max(), median(), sum(), n() 
## (returns the length of vector), first() (returns first value in vector), last() (returns last value in vector)
## and n_distinct() (number of distinct values in vector).
msleep %>%
  summarise(avg_sleep = mean(sleep_total),
            min_sleep = min(sleep_total),
            max_sleep = max(sleep_total),
            total = n())

## GroupBy Examples:
## =====================================================================================================
## The group_by() verb is an important function in dplyr. As we mentioned before it’s related to concept of 
## “split-apply-combine”. We literally want to split the data frame by some variable (e.g. taxonomic order), 
## apply a function to the individual data frames and then combine the output.

msleep %>%
  group_by(order) %>%
  summarise(avg_sleep = mean(sleep_total),
            min_sleep = min(sleep_total),
            max_sleep = max(sleep_total),
            total = n())
