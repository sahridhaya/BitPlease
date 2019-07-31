# Example 4     Chapter 11       Page no.: 354
# Approximation of second derivatives

#Given Function
f <- function(x){
  cos(x)
}

# 2nd Derivative of given function
fx2 <- function(x){
  -cos(x)
}

# Second order derivative function
f2 <- function(x,h){
  return((f(x+h)-(2*f(x))+f(x-h))/(h^2))
}

#Given values
h1 <- 0.01
x1 <- 0.75

print(fx2(x1))

print(f2(x1,h1))

# Error calculated as difference of Exact value and Approximation
Er <- fx2(x1) - f2(x1,h1)

cat("The difference of value between Exact and approximated value is", Er,". When roundoff errors are not considered.")


# The answer calculated and textual answers don't match as values taken in text are not true values. They are rounded off.
# The solution obtained here is exact and true