#page - 53
#section - 1.9 ELEMENTARY MATRICES AND MATRIX INVERSES
#example 14

#included package - matlib

#for inverse functions
library(matlib)

#matrix A
A <- matrix(c(1,-1,2,3,2,-1,0,2,4,1,-11,-1,1,2,3,83), 4, 4, byrow=TRUE)
A

#determinant of A
det(A)

#inverse matrix of A, AI
(AI  <- inv(A))
