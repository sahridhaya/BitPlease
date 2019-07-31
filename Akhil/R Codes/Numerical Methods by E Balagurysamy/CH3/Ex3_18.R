#Example 18     Chapter 3       Page no.: 56
# Addition of floating numbers

x <- 0.500000E1
x
y <- 0.100000E-7
y
z <- signif(x+y,6)

cat("x+y=",z)
cat("It can also be represented as 0.0.500000E1")

cat("Note that the sum value is same as the 1st input.")