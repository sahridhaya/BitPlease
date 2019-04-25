# Exercise 1  Chapter: 4    PAge no.: 61
# Left and Right inverse
# Include "Matrix" and "matlib" library
A <- matrix(c(1,3,4,2,3,5,1,4,5), nrow = 3 , ncol = 3 , byrow = TRUE)
det(A)
inv(A)
B <- matrix(c(3,4,7,3,5,8,4,5,9), nrow = 3 , ncol = 3 , byrow = TRUE)
det(B)
inv(B)

# We can see that both the case error occours 
# It is because the Right and left square matrices are numerically singular