# Example 1     Chapter 6       Page no.: 126
# Initial Guess Value

#Given Polynomial
f <- function(x){
  2*(x^4)-8*(x^2)+2*x+12
}

n1  <- 4
a1 <- c(12,2,-8,2)
x1 <- -a1[3]/2

cat("The Maximum possible root is",x1)

#Function to find root intervals
f1 <-function(a,n){
  xMax <- sqrt(((a[n-1]/a[n])^2)-2*(a[n-2]/a[n]))
}

mr <- f1(a1,n1)

cat(" Real roots lie in the interval (",-mr,",",mr,").")
