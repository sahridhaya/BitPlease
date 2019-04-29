#page - 55
#section - 1.9 ELEMENTARY MATRICES AND MATRIX INVERSES
#example 15

#included package - matlib

#for inverse functions
library(matlib)

#matrix B
B <- matrix(c(3,-1,2,2,1,1,1,-3,0), 3, 3, byrow=TRUE)
B

#determinant of matrix B
det(B)

#inverse of matrix B, BI
(BI  <- inv(B))
