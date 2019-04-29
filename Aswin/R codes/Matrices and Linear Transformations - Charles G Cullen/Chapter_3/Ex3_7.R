#page - 115
#section - 3.4 DETERMINANTS AND RANK
#example 7

#included package - matrixcalc

#for rank calculation
library(matrixcalc)

#matrix A
A <- matrix(c(1,-1,1,1,1,2,-1,-1,2,-2,1,-1,0,-3,-1,-1), 4, 4, byrow=TRUE)

#matrix N
N <- matrix(c(0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0), 4, 4, byrow=TRUE)

#rank of A
matrix.rank(A)

#rank of N
matrix.rank(N)