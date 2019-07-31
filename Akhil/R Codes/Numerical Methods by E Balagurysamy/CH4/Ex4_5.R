# Example 5     Chapter 4       Page no.: 68
# Truncation error 

install.packages("pracma")
library("pracma")

x <- 1/5

# Numerical Error function
e <- function(x,n){
  E <- 0
  for (i in n:6) {
    E <- E + (x^i)/fact(i)
  }
  return(E)
}
cat(" CASE A:")
n1 <-3
cat("When first 3 terms are added n=",n1)
cat("Truncation error =", e(x,n1))

cat(" CASE B:")
n2 <-4
cat("When first",n2,"terms are added, n=",n2)
cat("Truncation error =", e(x,n2))

cat(" CASE C:")
n3 <-5
cat("When first",n3,"terms are added n=",n3)
cat("Truncation error =", e(x,n3))

