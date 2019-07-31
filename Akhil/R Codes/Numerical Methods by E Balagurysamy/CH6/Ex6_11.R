# Example 11     Chapter 6       Page no.: 161
# Fixed point method

# Installing and importing package 'spuRs'
install.packages("spuRs")
library("spuRs")

#Given function when converted in terms of 'x'
f <- function(x){
  2-(x^2)
}
cat("Let initial value be 0")
x0 <- 0

F1 <- fixedpoint(f,x0)
cat("Root is",F1)

cat(" Let us assume x0=-1")
x0 <-1
F2 <- fixedpoint(f,x0)
cat("Another Root is",F2)
