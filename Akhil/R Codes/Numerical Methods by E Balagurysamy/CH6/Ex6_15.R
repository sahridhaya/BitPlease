# Example 15     Chapter 6       Page no.: 176
# Finding Quotient polynomial

#Given Functon  
p <- function(x){
  (x^3)-7*(x^2)+15*x-9
}

a <- c()
b <- c()
# It is given that p(x)=(x-3)q(x)
x1 <-3
a[4] <- 1
a[3] <- -7
a[2] <-15
a[1] <--9
b[4] <- 0
for (i in 4:2) {
  b[i-1] = a[i] + x1*b[i]
}

cat("The required polynomial q(x) is",b[3],"*x^2",b[2],"*x +",b[1],"=0")