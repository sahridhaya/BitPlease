# Example 2     Chapter 12       Page no.: 376
# Composite Trapezoidal integration

# Include library 'pracma'
install.packages('pracma')
library('pracma')


#Given Function
f <- function(x) {
  return(exp(x))
}

#Given Values
a1 <- -1
b1 <- 1

k <- integral(f,a1,b1)

# Function for composite trapezoidal integration
composite.trapezoid <- function(f, a, b, n) {
  if (is.function(f) == FALSE) {
    stop('f must be a function with one parameter (variable)')
  }
  
  h <- (b - a) / n
  
  j <- 1:(n - 1)
  
  xj <- a + j * h
  
  approx <- (h / 2) * (f(a) + 2 * sum(f(xj)) + f(b))
  
  return(approx)
}

#CASE A
cat("CASE A:")
n1 <- 2
cat("n=",n1)
k1 <- composite.trapezoid(f, a1, b1, n1)
cat("Value of the function after integration is",k)


#CASE B
cat("CASE B:")
n2 <- 4
cat("n=",n2)
k2 <- composite.trapezoid(f, a1, b1, n2)
cat("Value of the function after integration is",k)

cat("Exact value of integral is",k,". Here n=",n2,"gives a better result than n=",n1,'.')