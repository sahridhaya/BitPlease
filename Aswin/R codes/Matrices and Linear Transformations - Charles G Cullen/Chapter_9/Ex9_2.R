#page - 254
#section - 9.2 EXACT METHODS FOR SOLVING AX = K
#example 2

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(7,9,2,-1,4,-5,-7,2,3,-2,-5,-1,1,6,-4,-3), 4, 4, byrow=TRUE)

#column matrix k
K <- c(1,2,4,3)

#reduced row-echelon form
echelon(A, K, reduced=TRUE, verbose=TRUE, fractions=TRUE)
