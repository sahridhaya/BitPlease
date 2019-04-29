#page - 265
#section - 9.4 CHARACTERISTIC VALUES AND VECTORS
#example - 4

#matrix A
A <- matrix(c(1,1,3,1,-2,1,3,1,3), 3, 3, byrow=TRUE)
A

#matrix X
X <- matrix(c(1,1,1), 3, 1, byrow=TRUE)
X

#eigenvalues and eigenvectors
eigen(A)