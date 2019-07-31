# Example 10     Chapter 12       Page no.: 400
#Gauss-Legendre Three point formula

# Installing and attaching 'pracma' library
install.packages("pracma")
library("pracma")

#Gauss-Legendre nodes and weights
f <- function(x) {
  (x^4)+1
}

# Given values
n1 = 3
a1 = 2
b1 = 4

cc <- gaussLegendre(n1, a1, b1)
Q <- sum(cc$w * f(cc$x))
cat("The Gauss-Legendre Three point integral of (x^4)+1 is", Q)

# The value in the textbook and the calculated value vary slightly due to approximations assumed in textbook.