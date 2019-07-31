# Example 16     Chapter 3       Page no.: 55
# Multiplication of floating numbers

x <- 0.200000E4
y <- 0.400000E-2

z <- signif(x%*%y,6)

cat("x*y=",z)
cat("It can also be represented as 8.00000 when normalized.")

#Normalized answer given in the text is wrong. It should be 8.00000 instead of 0.800000