################################################################
## Script for 'table' function
################################################################
smokerData <- read.csv(file="C:\\Users\\rWX311568\\Documents\\R-practice\\smoker.csv", sep=',', header=TRUE)
#print(head(smokerData))
#print(summary(smokerData))

##Creating table
smokeTable <- table(smokerData)
#print(smokeTable)

## create table for specific tables
smokeColumns <- table(smokerData$Smoke, smokerData$SES)
#print(smokeColumns)

## creating table directly
smoke <- matrix(c(51,43,22,92,28,21,68,22,9),ncol=3,byrow=TRUE)
colnames(o) <- c("High","Low","Middle")
rownames(o) <- c("current","former","never")
smokeTable2 <- as.table(smoke)

## Marginal distribution of the table
margin.table(smokeTable)

## marginal distribution for a specific column
## syntax: margin.table(<tableName>, <column number, starting from 1, not 0>)
margin.table(smokeTable,1)
margin.table(smokeTable, 2)


## to get proportions, manual calculations
smokeTable/margin.table(smokeTable)
margin.table(smokeTable, 1)/margin.table(smokeTable)
margin.table(smokeTable, 2)/margin.table(smokeTable)

## marginal distribution using prop.table
prop.table(smokeTable)
prop.table(smokeTable, 1)
prop.table(smokeTable, 2)

## check if proportions are different
summary(smokeTable)

## graphical view of the table
mosaicplot(smokeTable)
