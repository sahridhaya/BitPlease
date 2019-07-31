# Example 17     Chapter 3       Page no.: 55
# Division of floating numbers

x <- 0.876543E-5
y <- 0.200000E-3

z <- signif(x/y,6)

cat("x/y=",z)
cat("It can also be represented as 0.438271E-1 when normalized.")
