#page - 21
#section - 1.3 MATRICES
#example 2


#first matrix A
A <- matrix(c(1,2,3,4), 2, 2, byrow=TRUE)
A
#second matrix B
B <- matrix(c(5,6,7,8), 2, 2, byrow=TRUE)
B
#multiplying A and B to AB
AB <- A %*% B

#printing AB
AB

#multiplying B and A to BA
BA <- B %*% A

#printing BA
BA

#function to compare two matrices
matequal <- function(x, y)
	is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)

#checking if AB and BA are equal
matequal(AB, BA)


