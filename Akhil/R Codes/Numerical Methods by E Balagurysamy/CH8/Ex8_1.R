# Example 1     Chapter 8       Page no.: 254 
# Jacobi Iteration Method

# Installing and importing 'pracma' library
install.packages("pracma")
library("pracma")

#System of equations in matrix form
A1 <- matrix(c(2,1,1,3,5,2,2,1,4), nrow = 3, byrow = T)
B1 <- c(5,15,8)

#Jacobi method
C <- c()
C <- itersolve(A1, B1, x0 = NULL, nmax = 4, tol = 1e-05 , method = "Jacobi")
cat("The values given in the text is only upto 4 iterations, which are:", C[["x"]])

C1 <- c()
C1 <-itersolve(A1, B1, x0 = NULL, nmax = 1000, tol = 1e-05 , method = "Jacobi")
cat("The final solution after",C1[["iter"]],"iterations are:", C1[["x"]])