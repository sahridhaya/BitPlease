# Example 4     Chapter: 1    Page No.: 7
# Matrix Multiplicati

a <- matrix(c(0,1,0,2,3,1), nrow=2,ncol=3, byrow = TRUE)
b <- matrix(c(2,0,1,2,1,1), nrow=3,ncol=2, byrow = TRUE)
c <- print(a %*% b)
d <- print(b %*% a) 


