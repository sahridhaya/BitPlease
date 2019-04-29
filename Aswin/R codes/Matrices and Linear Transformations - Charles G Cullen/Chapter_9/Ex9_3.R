#page - 259
#section - 9.2 EXACT METHODS FOR SOLVING AX = K
#example 3

#included package - matlib

#for inverse functions
library(matlib)

#matrix A
A <- matrix(c(1,0,2,-1,4,5,3,-1,0,1,8,5,-3,1,4,6,2,0,0,1,0,1,4,2,0), 5, 5, byrow=TRUE)
A

#determinant of matrix A
det(A)

#inverse of matrix A, AI
(AI  <- inv(A))
