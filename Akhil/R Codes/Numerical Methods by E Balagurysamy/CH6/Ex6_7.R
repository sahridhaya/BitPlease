# Example 7     Chapter 6       Page no.: 147
# Newton-Raphson Method

install.packages("numDeriv")
library("numDeriv")

# Given Function
u <- function(x) {
  x^2-3*x+2
}

curve(u, xlim=c(-5,5), col='blue', lwd=2, lty=2, ylab='f(x)')
abline(h=0)
abline(v=0)

# From the curve the points in the vicinity are noted
a <- 0
b <-1

newton.raphson <- function(f, a, b, tol = 1e-5, n = 1000) {
  require(numDeriv) # Package for computing f'(x)
  
  x0 <- a # Set start value to supplied lower bound
  k <- n # Initialize for iteration results
  
  # Check the upper and lower bounds to see if approximations result in 0
  fa <- f(a)
  if (fa == 0.0) {
    return(a)
  }
  
  fb <- f(b)
  if (fb == 0.0) {
    return(b)
  }
  
  for (i in 1:n) {
    dx <- genD(func = f, x = x0)$D[1] # First-order derivative f'(x0)
    x1 <- x0 - (f(x0) / dx)
    k[i] <- x1 
    # Checking difference between values
    if (abs(x1 - x0) < tol) {
      root.approx <- tail(k, n=1)
      res <- list('root approximation' = root.approx, 'iterations' = k)
      return(res)
    }
    # If Newton-Raphson has not yet reached convergence set x1 as x0 and continue
    x0 <- x1
  }
  print('Too many iterations in method')
}

N <- newton.raphson(u, a, b)
cat("The root closer to the point x=0 is",N)