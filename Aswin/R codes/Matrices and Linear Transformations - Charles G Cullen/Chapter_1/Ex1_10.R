#page - 40
#section - 1.7 SPECIAL KINDS OF MATRICES
#example 10

#matrix L
L <- matrix(c(2,0,0,3,0,0,-1,0,4), 3, 3, byrow=TRUE)
L

#matrix U
U <- matrix(c(0,7,9,0,0,-1,0,0,0), 3, 3, byrow=TRUE)
U

#creating Lcheck to create a lower triangular matrix of L
Lcheck <- L
lower.tri(Lcheck)
Lcheck[upper.tri(Lcheck)] <- 0
Lcheck

#creating Ucheck to create a upper triangular matrix of U
Ucheck <- U
lower.tri(Ucheck)
Ucheck[lower.tri(Ucheck)] <- 0
Ucheck

#function to compare two matrices
matequal <- function(x, y)
	is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

#checking if L and U are lower and upper triangular matrix respectively
matequal(L, Lcheck)
matequal(U, Ucheck)