# Example 8     Chapter 12       Page no.: 397
#Gauss-Legendre Two point formula

#Given functions and values
f <- function(x){
  exp(x)
}
a1 <- -1
b1 <-  1

#Gauss-Legendre Two point formula
I <- function(a,b){
  return(f(a/sqrt(3))+f(b/sqrt(3)))
}

I1 <- I(a1,b1)
cat("The Gauss-Legendre two point integral of exp(x) is", signif(I1, digits = 8))