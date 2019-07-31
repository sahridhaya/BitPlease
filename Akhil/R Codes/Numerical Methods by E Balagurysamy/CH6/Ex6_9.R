# Example 9     Chapter 6       Page no.: 153
# Secant Method

#Gien Function
f <- function(x){
  (x^2)-4*x-10
}
# Given values
a <- 4
b <- 2


secant.method <- function(f, x0, x1, tol = 1e-9, n = 500) {
  for (i in 1:n) {
    x2 <- x1 - f(x1) / ((f(x1) - f(x0)) / (x1 - x0)) # Secant Function
    if (abs(x2 - x1) < tol) { # Checking difference
      return(x2)
    }
    x0 <- x1
    x1 <- x2 
  }
}

S<-secant.method(f, a, b)
cat("The root estimated using Secant method is",S)

#The estimated value slightly varies from the text book answer due to approximation