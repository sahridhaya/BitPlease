#page - 111
#section - 3.3 ADJOINTS AND INVERSES
#example 5

#matrix A
A <- matrix(c(2,-1,1,4,2,4,6,3,9), 3, 3)

# Minor and cofactor functions
minor <- function(A, i, j) det(A[-i,-j])
cofactor <- function(A, i, j) (-1)^(i+j) * minor(A,i,j)

#Adjoint functions 
adjoint <- function(x) {
  n <- nrow(x)
  B <- matrix(NA, n, n)
  for( i in 1:n )
    for( j in 1:n )
      B[j,i] <- cofactor(x, i, j)
  B
}
adjoint(A)