# Example 8     Chapter 3        Page no.: 50
# COnversion of integer to Binary


x <- -13

install.packages("binaryLogic")
library("binaryLogic")

y <- as.binary(x, size=0.7, n=0, logic=FALSE)

cat("The integer",x,"can be represented as",print(y),"in binary format")
