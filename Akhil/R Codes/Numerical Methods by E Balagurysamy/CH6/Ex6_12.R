# Example 12     Chapter 6       Page no.: 162
# Fixed point method Convergence and Divergence

# Installing and importing package 'spuRs'
install.packages("spuRs")
library("spuRs")

#Given function when converted in terms of 'x'
f <- function(x){
  5/x
}
cat("Let initial value be 1")
x0 <- 1

F1 <- fixedpoint(f,x0)
cat("This type of divergence is called OSCILLATORY DIVERGENCE")

cat(" Let us assume another function x=(x^2)+x-5")
f1 <- function(x){
  (x^2)+x-5
}
cat("Let initial value be 0")
x0 <- 0
F2 <- fixedpoint(f1,x0)

cat("This type of divergence is called MONOTONE DIVERGENCE as it diverges rapidly")

#*********************************************

# Error May occour when calculating convergence on f1.
# It is due to rapid divergance.

#*********************************************

cat(" Let us assume another function 2x=(5/x)+x")
f3 <- function(x){
  (x+(5/x))/2
}
cat("Let initial value be 1")
x0 <- 1
F3 <- fixedpoint(f3,x0)

cat("This time the function converges rapidly")
cat("The square root of 5 is",signif(F3,digits = 5))


