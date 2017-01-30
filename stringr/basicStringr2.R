library(stringr)

string1 <- "This is a string"
string2 <- 'If I want to include a "quote" inside a string, I use single quotes'

## To print the length of strings
str_length(c(string1, string2, NA))

## Combining two strings
str_c("Rahul", "Telgote")
str_c(c("Rahul", "Telgote"), c("Village", "Ambikapur"))
str_c("Rahul", "Telgote", sep = " ")
str_c("|-", string1, "-|")
str_replace("Rahul", "Relacing", NA)

## Subsetting strings: to extract the part of the complete string
x <- c("Apple", "Orange", "Banana", "Mango")
str_sub(x, 1, 4)
str_sub(x, -3, -2)
str_sub(x, 1, 8)
str_to_lower(str_sub(x, 1, 8))

## To  collapse a vector of strings into a single string, use collapse:
str_c(c("x", "y", "z"), collapse = "")
str_c(c("ab", "cd", "ef"), collapse = " ")
str_c(c("x", "y", "z"), collapse = ", ")

## Localization of the text
str_to_upper(c("i", "1"))
str_to_upper(c("i", "1"), locale = "tr")

## Sorting on the basis on locale langauges
x <- c("apple","carrot", "eggplant", "banana")
str_sort(x, locale = "en")
str_sort(x, locale = "haw")
str_order(x, locale = "en")
str_order(x, locale = "haw")

## String wrapping function: str_wrap
juna_string <- "The fort complex was built under the supervision of Karan Chand, the Prime Minister of Raja Rai Singh, the sixth ruler of Bikaner, who ruled from 1571 to 1611 AD. Construction of the walls and associated moat commenced in 1589 and was completed in 1594. It was built outside the original fort of the city, about 1.5 kilometres (0.93 mi) from the city centre. Some remnants of the old fort are preserved near the Lakshmi Narayan temple. Historical records reveal that despite the repeated attacks by enemies to capture the fort, it was not taken, except for a lone one-day occupation by Kamran Mirza. Kamran was the second son of the Mughal Emperor Babur who attacked Bikaner in 1534, which was then ruled by Rao Jait Singh"
str_wrap(juna_string, width = 40, indent = 2)

## To trim the string:
## Syntax: str_trim(string, side=c("both", "left", "right"))
str_trim("  String with trailing and leading white space\t")
str_trim("\n\nString with trailing and leading white space\n\n")
