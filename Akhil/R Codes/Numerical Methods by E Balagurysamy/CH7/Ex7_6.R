# Example 6     Chapter 7       Page no.: 243
# Cholesky's Algorithm

#import 'matlib' library
#install.packages("matlib")
library(matlib)

#Define system of equations in matrix form
A<-matrix(c(1,2,3,2,8,22,3,22,82),nrow = 3,ncol = 3,byrow = TRUE)
A

cat("Cholesky's Decomposition Matris is")
c <- cholesky(A)

cat("The parent matrix is obtained when the Cholesky matrix are multiplied with itself.")
C <- cholesky(A) %*% t(cholesky(A))
if(all(C == A)){
  print("The matrix")
  print(c)
  print("is the Cholesky of the given matrix.")
}else{
  print("The matrix")
  print(c)
  print("is not Cholesky of the given matrix.")
}

# The answer given in the textbook is just the Transpose of obtained Cholesky matrix

