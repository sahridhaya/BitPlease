# Example 1     Chapter 3       Page no.: 45
# Binary number to Decimal

#Importing 'DescTools' library
#install.packages("DescTools")
library(DescTools)

a <- 1101 # Integer part of binary number
b <- 0.1101 # Decimal part of binary number

# conversion of Decimal part of binary
f <- function(x){
  length(gregexpr("[[:digit:]]", as.character(x))[[1]]) 
}

k <- f(b) -1
A <- ((b %% 1)*(10^k))
# Converting into vector
A <- as.numeric(strsplit(as.character(A), "")[[1]])
m <- length(A)
d <- 0.5
p1 <- c()
for (i in 1:(m+1)) {
  p <-  signif(A[i]*d, digits = 10)
  p1[i] <- p
  p <- sum(p1, na.rm = TRUE)
  d <- d*0.5
}

D <- p + BinToDec(a)

cat(" The Decimal equivalent of 1101.1101 is",D)
