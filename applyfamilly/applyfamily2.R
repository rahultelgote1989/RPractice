
## apply can be used to apply a function to a matrix

## create the matrix with values from between 1 to 10 and 21 to 30
data <- matrix(c(1:10, 21:30), nrow=5, ncol=4)
print(data)

## use apply function on complete matrix
## apply mean function on each row of the matrix i.e. use 1
apply(data, 1, mean)

## apply mean function on each column of the matrix i.e. use 2
apply(data, 2, mean)

## Lapply Function:
##=================================================
## Lapply function is similer to apply function, but it takes
## list as input and gives list as a output

data_list <- list(x=1:5, y=6:10, z = 11:15)
print(data_list)

## use lapply to apply function to each element of the list
lapply_data <- lapply(data_list, FUN = median)
print(lapply_data)

## sapply function:
## ====================================================
## saaply is the same as lapply but returns vector instead of lists
sapply_data <- sapply(data_list, FUN = median)
print(sapply_data)

## tapply function
## =====================================================
## tapply splits the array based on specified data.
library(datasets)
tapply(mtcars$wt, mtcars$cyl, mean)

## mapply
## mapply is a multivariate version of sapply. It will apply the specified function to the first element of each argument first, followed by the second element, and so on. For example:
x <- 1:5
b <- 6:10
mapply(sum, x, b)


