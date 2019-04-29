#page - 82
#section - 2.3 LINEAR INDEPENDENCE AND BASES
#example 6

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(3,-1,-1,-2,2,-2,-1,-1,3), 3, 3, byrow=TRUE)

#column matrix k
K <- c(-3,2,1)

#reduced row-echelon form
B = echelon(A, K, reduced=TRUE, verbose=TRUE, fractions=TRUE)
