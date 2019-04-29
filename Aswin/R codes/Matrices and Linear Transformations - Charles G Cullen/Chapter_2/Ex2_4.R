#page - 81
#section - 2.3 LINEAR INDEPENDENCE AND BASES
#example 4

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(-1,-2,2,0,1,3,1,1,1), 3, 3, byrow=TRUE)

#column matrix k
K <- c(0,0,0)

#reduced row-echelon form
echelon(A, K, reduced=FALSE, verbose=TRUE, fractions=TRUE)