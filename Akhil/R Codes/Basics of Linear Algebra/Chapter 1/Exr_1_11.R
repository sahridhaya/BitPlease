# Exercise 11     Chapter: 1    Page No.: 6
# Solving matrix equation
A <- matrix(c(1,0,0,0,1,0,0,0,1), ncol = 3 , nrow = 3 , byrow = T)
B <- matrix(c(1,1,1,1,1,1,1,1,1), nrow = 3 , byrow = T )
# Given that X+A =2(X-B)
# We have X = A+2B, from the given equation , So
X <- A + 2*B
X
