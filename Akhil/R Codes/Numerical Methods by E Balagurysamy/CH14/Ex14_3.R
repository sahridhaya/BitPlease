# Example 3     Chapter 14       Page no.: 473
# Eigen value

# Include "Matrix" and "matlib" library
library("Matrix")
library("matlib")

A <- matrix(c(8,-4,2,2), nrow = 2 , ncol = 2, byrow = TRUE)

a <- eigen(A)

print(eigen(A,only.values = TRUE))

cat("For the value", a$values[1])
x1 <- c(2,1)
cat("Eigen Vector is:",x1)

cat("For the value", a$values[2])
x2 <- c(1,1)
cat("Eigen Vector is:",x2)
