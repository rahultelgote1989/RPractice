## Author:  Rahul Telgote

## Apply Examples:
matA <- matrix(c(1:10, 11:20), nrow = 10, ncol = 2)
print(matA)

#mean of the rows
meanRows <- apply(matA, 1, mean)
print(meanRows)

## mean of the columns
meanCols <- apply(matA, 2, mean)
print(meanCols)

## divide all values by 2, using function
divFun <- apply(matA, 1:2, function(x) x/2)
print(divFun)

