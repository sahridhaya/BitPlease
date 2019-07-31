# Example 2     Chapter 8       Page no.: 261 
# Gauss-Seidel Iteration

# Installing and importing 'pracma' library
install.packages("pracma")
library("pracma")

#System of equations in matrix form
A1 <- matrix(c(2,1,1,3,5,2,2,1,4), nrow = 3, byrow = T)
B1 <- c(5,15,8)

#Gauss-Siedel method
C <- c()
C <- itersolve(A1, B1, x0 = NULL, nmax = 2, tol = 1e-05 , method = "Gauss-Seidel")
cat("The values given in the text is only upto 2 iterations, which are:", C[["x"]])

C1 <- c()
C1 <-itersolve(A1, B1, x0 = NULL, nmax = 1000, tol = 1e-07 , method = "Gauss-Seidel")
cat("The final solution after",C1[["iter"]],"iterations are:", C1[["x"]])