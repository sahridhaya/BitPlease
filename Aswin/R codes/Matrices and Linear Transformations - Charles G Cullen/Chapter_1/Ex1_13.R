#page - 45
#section - 1.8 ROW EQUIVALENCE
#example 13

#included package - matlib

#for echelon function
library(matlib)

#matrix A
A <- matrix(c(1,2,3,1,3,2,1,1,0,2,4,1,1,1,1,1), 4, 4, byrow=TRUE)

#column matrix k
K <- c(3,7,1,4)

#reduced row-echelon form
echelon(A, K, verbose=TRUE, fractions=TRUE) 
