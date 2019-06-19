#Example 7,section 3.2, page 202
#Consider a matrix A for which det(A)= -94. Compute the inverse of matrix from determinant:

library(matlib)
A<-matrix(c(3,-2,1,5,6,2,1,0,-3),nrow = 3,byrow = TRUE)
print(A)
det(A)
X<-solve(A) #inbuilt function to call inverse of matrix
print(X)

Check.inv = function(A.inverse) # setup function to call inverse of matrix
{
  det_A <- 1/det(A)
Adj_A <- adjoint(A)
A.inverse = Adj_A *  det_A
return(A.inverse)
}

Check.inv(A)