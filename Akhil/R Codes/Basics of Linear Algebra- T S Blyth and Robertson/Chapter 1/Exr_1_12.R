# Exercise 12     Chapter: 1    Page No.: 8
# Matrix Multiplication

a <- matrix(c(3,1,-2,2,-2,0,-1,1,2), nrow=3,ncol=3, byrow = TRUE)
b <- matrix(c(1,1,1,1,-1,1,0,1,2), nrow=3,ncol=3, byrow = TRUE)
c <- print(a %*% b)


