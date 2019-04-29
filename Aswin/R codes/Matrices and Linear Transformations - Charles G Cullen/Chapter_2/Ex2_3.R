#page - 80
#section - 2.3 LINEAR INDEPENDENCE AND BASES
#example 3

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(1,-2,1,2,-5,0,-1,3,1,2,0,10), 4, 3, byrow=TRUE)

#column matrix k
K <- c(0,0,0,0)

#reduced row-echelon form
echelon(A, K, reduced=FALSE, verbose=TRUE, fractions=TRUE)