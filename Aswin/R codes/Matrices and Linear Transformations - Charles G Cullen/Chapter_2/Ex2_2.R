#page - 75
#section - 2.2 SUBSPACES
#example 2

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(1,-1,-3,-1,2,5,1,2,6), 3, 3, byrow=TRUE)

#column matrix k
K <- c(-6,10,15)

#reduced row-echelon form
echelon(A, K, reduced=FALSE, verbose=TRUE, fractions=TRUE)