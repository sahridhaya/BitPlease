# Example 4     Chapter 12       Page no.: 382
# Composite Simpson's 1/3 Rule


# CASE A
#Given function
f1 <- function(x){
  sqrt(sin(x))
}

a1 <-0
b1 <-pi/2
n1 <- 4

composite.simpson <- function(f, a, b, n) {
  if (is.function(f) == FALSE) {
    stop('f must be a function with one parameter (variable)')
  }
  
  h <- (b - a) / n
  
  xj <- seq.int(a, b, length.out = n + 1)
  xj <- xj[-1]
  xj <- xj[-length(xj)]
  
  approx <- (h / 3) * (f(a) + 2 * sum(f(xj[seq.int(2, length(xj), 2)])) + 4 * sum(f(xj[seq.int(1, length(xj), 2)])) + f(b))
  
  return(approx)
  
}

CS1 <- composite.simpson(f1, a1, b1, n1 )
cat("Value of n =",n1)
cat(" The value of Simpson's Integral when n=",n1,"is",signif(CS1,digits = 6))


#CASE B
n2 <- 6
cat("Value of n =",n2)
CS2 <- composite.simpson(f1, a1, b1, n2 )
cat(" The value of Simpson's Integral when n=",n2,"is",signif(CS2, digits = 6))