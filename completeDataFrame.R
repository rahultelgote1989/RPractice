
##Creating data frame
Died.At <- c(22,40,72,41)
Writer.At <- c(16, 18, 36, 36)
First.Name <- c("John", "Edgar", "Walt", "Jane")
Second.Name <- c("Doe", "Poe", "Whitman", "Austen")
Sex <- c("MALE", "MALE", "MALE", "FEMALE")
Date.Of.Death <- c("2015-05-10", "1849-10-07", "1892-03-26","1817-07-18") 

writers_df <- data.frame(Died.At, Writer.At, First.Name, Second.Name, Sex, Date.Of.Death)
writers_df
## to know about your dataframe in detail
str(writers_df)

## to get the names of the dataframe
names(writers_df)

## to get the name of the columns of dataframe
colnames(writers_df)

## to get row names of the dataframe
rownames(writers_df)

## Assiging new column and rownames to the dataframe
colnames(writers_df) = c("Age.At.Death", "Age.As.Writer", "Name", "Surname", "Gender", "Death")
rownames(writers_df) = c("ID1", "ID2", "ID3", "ID4")

## dimentions of dataframe, will result like: <number of rows> <number of columns>
dim(writers_df)

## get number of rows and columns
dim(writers_df)[1]  #number of rows
dim(writers_df)[2]  #number of columns

nrow(writers_df)
ncol(writers_df)

length(writers_df) # only gives number of rows

## access the elements of dataframe
#access columns by entering the data frame's name in combination with the variable name
writers_df$Surname
writers_df['Name']

writers_df[1:3]       #will give rows from 1st to 3rd
writers_df[1:3, 2]    #will give rows from 1st to 3rd for 2nd column
writers_df[,3]        #will give all values of third column
writers_df[2, ]       #will give all values of 2nd row

#get value of the specific position from a column
writers_df$Name[4]
writers_df$Age.At.Death[2]

## change the values of the dataframes
writers_df$Death <- writers_df$Age.At.Death-1
writers_df[, 1] <- writers_df$Age.At.Death-1

writers_df[2,3] = "JAne"
writers_df[2,6] = "1989-04-22"
