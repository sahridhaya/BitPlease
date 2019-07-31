# Example 1     Chapter 11       Page no.: 348
# Error in Approximation

#Given Function
f <- function(x){
  x^2
}

#different values of h 
h1 <- 0.2
h2 <- 0.1
h3 <- 0.05
h4 <- 0.01

#First order forward difference formula
f1 <- function(x,h) {
  return((f(x+h) - f(x))/h)
}

#2nd order derivative of function
f2 <- function(x){
  return(2)
}

x <- 1

#Computing values of first order forward difference for each value of 'h'
fh1 <- f1(x,h1)
fh2 <- f1(x,h2)
fh3 <- f1(x,h3)
fh4 <- f1(x,h4)

#Error function
Et <- function(h,x){
  return((-(h1/2)*f2(x)))
}

#Computing values of Trunctaion Error for each value of 'h'

Et1 <- Et(h1)
Et2 <- Et(h2)
Et3 <- Et(h3)
Et4 <- Et(h4)

cat("Correct value of fucntion at x=",x,"is,",fh1+Et1)
