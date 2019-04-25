# Example 1     Chapter: 1    Page No.: 2
# Matrix input
R <- 3
C <- 3
X <- matrix(1:9, nrow = R ,ncol = C , byrow = TRUE)
X
for (i in 1:R) {
  for (j in 1:C) {
    X[i,j] <- (i^j) 
  }
}