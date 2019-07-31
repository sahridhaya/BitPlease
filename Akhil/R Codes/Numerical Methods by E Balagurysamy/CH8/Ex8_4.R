# Example 4     Chapter 8       Page no.: 271
# Gauss-Seidel method

# Installing and importing 'pracma' library
install.packages("pracma")
library("pracma")

#System of equations in matrix form
A1 <- matrix(c(1,-3,3,1), nrow = 2, byrow = T)
B1 <- c(5,5)
x1 <- c(0,0)
#Gauss-Siedel method
C1 <- c()
C1 <-itersolve(A1, B1, x0 = x1, nmax = 1000, tol = 1e-04 , method = "Gauss-Seidel")

if(C1[["iter"]]>= 1000)
{
  cat(" The process does not converge to solution, rather it diverges. ")
  cat("Thus there are no solution to the system of equations.")
}else{
  cat("The final solution after",C1[["iter"]],"iterations are:", C1[["x"]])
}
