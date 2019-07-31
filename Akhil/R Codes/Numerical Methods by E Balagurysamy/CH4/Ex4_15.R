# Example 15     Chapter 4       Page no.: 80
# Absolute and Relative error for a function

# Given Function
fxy <- function(x,y){
  return((X^2)+(y^2))
}
#First derivative of function w.r.t x
fx1 <- function(x,y){
  return(2*x)
}
#First derivative of function w.r.t y
fy1 <- function(x,y){
  return(2*y)
}

#Error in Approximation
ex <- 5E-3
ey <- 5E-3

# Given value
ya <- 4.000
xa <- 3.000

cat("GIven Value of x=",xa)
cat("GIven Value of y=",ya)

# Value of derivative at 4.000
F1 <- fx1(xa,ya)
F2 <- fy1(xa,ya)

#Computing Absolute Error
ef <- ex*F1 + ey*F2
cat("Absolute Error =",ef)
