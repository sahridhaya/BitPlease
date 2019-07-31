# Example 9     Chapter 3        Page no.: 51
# COnversion of integer to 16 bit Binary


x <- -32768

install.packages("binaryLogic")
library("binaryLogic")

y <- as.binary(x, size=2, n=0, logic=FALSE)

cat("The integer",x,"can be represented as",print(y),"in 16 Bit binary format")
