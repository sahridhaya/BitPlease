# Example 3     Chapter 8       Page no.: 269 
# Gauss-Seidel method

# Installing and importing 'pracma' library
install.packages("pracma")
library("pracma")

#System of equations in matrix form
A1 <- matrix(c(3,1,1,-3), nrow = 2, byrow = T)
B1 <- c(5,5)
x1 <- c(0,0)
#Gauss-Siedel method
C1 <- c()
C1 <-itersolve(A1, B1, x0 = x1, nmax = 1000, tol = 1e-04 , method = "Gauss-Seidel")
cat("The final solution after",C1[["iter"]],"iterations are:", C1[["x"]])
cat("Which can be approximated to x1= 2 and x2= -1")
