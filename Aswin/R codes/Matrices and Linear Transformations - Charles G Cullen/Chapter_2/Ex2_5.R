#page - 82
#section - 2.3 LINEAR INDEPENDENCE AND BASES
#example 5

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(1,2,3,3,2,1,0,2,4,1,1,1), 4, 3, byrow=TRUE)

#column matrix k
K <- c(1,1,1,1)

#reduced row-echelon form
B = echelon(A, K, reduced=TRUE, verbose=TRUE, fractions=TRUE)
