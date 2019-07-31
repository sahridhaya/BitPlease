# Example 9     Chapter 12       Page no.: 398
#Gaussian Two point formula

# Installing and attaching 'pracma' library
install.packages("pracma")
library("pracma")

#Gauss-Legendre nodes and weights
f <- function(x) {
  exp(-x/2)
}

# Given values
n1 = 2
a1 =-2
b1 = 2

cc <- gaussLegendre(n1, a1, b1)
Q <- sum(cc$w * f(cc$x))
cat("The Gaussian two point integral of exp(-x/2) is", signif(Q, digits = 9))