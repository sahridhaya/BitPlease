#page - 253
#section - 9.2 EXACT METHODS FOR SOLVING AX = K
#example 1

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(2,1,-1,2,1,3,2,-3,-1,2,1,-1,2,-3,-1,4), 4, 4, byrow=TRUE)

#column matrix k
K <- c(1,0,1,0)

#reduced row-echelon form
echelon(A, K, reduced=TRUE, verbose=TRUE, fractions=FALSE)