# Example 1     Chapter 9       Page no.: 154
# Eigen value
# Include "Matrix" and "matlib" library
A <-  matrix(c(0,1,-1,0), nrow = 2 , byrow = TRUE)
eigen(A, only.values = TRUE)