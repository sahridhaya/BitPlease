# Example 14     Chapter 4       Page no.: 79
# Absolute and Relative error for a function

# Given Function
f <- function(x){
  return(sqrt(x)+x)
}

#Error in Approximation
ex <- 5E-4

#First derivative of function
f1 <- function(x){
  return(1/(2*sqrt(x)) +1)
}

# Given value
xa <- 4.000
cat("GIven Value",xa)

# Value of derivative at 4.000
F1 <- f1(xa)

#Computing Absolute Error
ef <- ex*F1
cat("Absolute Error =",ef)

#Relative Error in Function
erf <- ef/f(xa)
cat(" Relative Error =",erf)