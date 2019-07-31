# Example 3     Chapter 4       Page no.: 64
# Error in Conversion

# Given Binary values 
x0.1 <- 0.00011001
x0.4 <- 0.01100110

#length of number
f <- function(x){
  length(gregexpr("[[:digit:]]", as.character(x))[[1]]) 
}

S <- x0.4 + x0.1
k <- f(S) -1
A <- ((S %% 1)*(10^k))
# Converting into vector
A <- as.numeric(strsplit(as.character(A), "")[[1]])
m <- length(A)
d <- 0.5
p1 <- c()
for (i in (m+1):1) {
  p <-  signif(A[i]*d, digits = 10)
  p1[i] <- p
  p <- sum(p1, na.rm = TRUE)
  d <- d*0.5
}
cat("The decimal obtained when summing the binary is:",p)
cat("But the true value is 0.5 when 0.4 and 0.1 are added together.")
cat("Error:",0.5-p)