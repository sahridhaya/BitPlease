#page - 106
#section - 3.2 THE LAPLACE EXPANSION
#example 2

#matrix A
A <- matrix(c(1,2,3,4,5,6,7,8,9), 3, 3, byrow=TRUE)
A

# Minor and cofactor functions
minor <- function(A, i, j) A[-i,-j]
cofactor <- function(A, i, j) (-1)^(i+j) * det(minor(A,i,j))

#calculating Minor and cofactor

minor(A, 1, 2)
cofactor(A, 1, 2)

minor(A, 3, 3)
cofactor(A, 3, 3)