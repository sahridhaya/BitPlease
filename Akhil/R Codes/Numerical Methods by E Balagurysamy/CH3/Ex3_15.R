# Example 15     Chapter 3       Page no.: 54
# Subtraction of floating numbers

x <- 0.994576E-3
y <- 0.999658E-3

z <- signif(x-y,6)

cat("x-y=",z)
cat("It can also be represented as 0.508200E-5 when normalized.")
