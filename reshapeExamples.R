library(reshape2)

## getting sample data for manipulation
airQual <- head(airquality)
names(airQual) <- tolower(names(airquality))

## Function 1: add_margins
# Syntax: add_margins(df, vars, margins = TRUE)
#print(airQual)
addMargin1 <- add_margins(airQual, vars = "temp", margins = TRUE)
#print(addMargin1)
addMargin2 <- add_margins(airQual, vars = c("temp", "month"), margins = TRUE)
#print(addMargin2)

## Function 2: cast
# Syntax: dcast(data, formula, fun.aggregate=NULL, ..., margins=NULL, subset=NULL, 
#               fill=NULL, drop=TRUE, value.var=guess_value(data))
# Syntax: acast(data, formula, fun.aggregate=NULL, ..., margins=NULL, subset=NULL, 
#               fill=NULL, drop=TRUE, value.var=guess_value(data))

aqm <- melt(airQual, id=c("month", "day"), na.rm = TRUE)
# now cast the data aqm
cast_aqm <- acast(aqm, month ~ variable)
cast_aqm2 <- acast(aqm, day ~ month ~ variable)
aqm_mean <- acast(aqm, month ~ variable, mean)
print(aqm_mean)
