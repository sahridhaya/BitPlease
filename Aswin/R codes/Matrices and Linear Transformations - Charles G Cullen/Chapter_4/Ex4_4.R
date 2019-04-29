#page - 135
#section - 4.5 CHARACTERISTIC VECTORS AND CHARACTERISTIC VALUES
#example - 4

#matrix A
A <- matrix(c(7,-8,-8,9,-16,-18,-5,11,13), 3, 3, byrow=TRUE)
A

#matrix X
X <- matrix(c(1,3,-2), 3, 1, byrow=TRUE)
X

A %*% X

#eigenvalues and eigenvectors
eigen(A)