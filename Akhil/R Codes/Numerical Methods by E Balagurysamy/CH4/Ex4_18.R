# Example 18     Chapter 4       Page no.: 84
# Difference in rearranging terms

x <- 497.0
y <- 496.0

# Computing Squares, assuming mantissa length of 4
sqx <- signif(sqrt(x),4)
sqy <- signif(sqrt(y),4)

#Method A
cat("Method A:")
z <- sqx - sqy
cat("z = sqx - sqy = ",z)

#Method B
cat("Method B:")
z <- (x-y)/(sqx+sqy)
cat("z = (x-y)/(sqrt(x)+sqrt(y)) = ",z)

cat("The correct answer is",z,". \nThis shows that rearranging the terms improve the result.")


