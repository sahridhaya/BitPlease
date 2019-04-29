#page - 88
#section - 2.4 THE RANK OF A MATRIX
#example 7

#included package - matlib
#included package - matrixcalc

#for echelon function
library(matlib)

#for rank calculation
library(matrixcalc)

#matrix A
A <- matrix(c(2,1,1,1,-2,1,0,5,-1), 3, 3, byrow=TRUE)

#column matrix k
K <- c(2,-3,8)

#reduced row-echelon form
B = echelon(A, K, reduced=TRUE, verbose=TRUE, fractions=TRUE)

#rank of A
matrix.rank(A)