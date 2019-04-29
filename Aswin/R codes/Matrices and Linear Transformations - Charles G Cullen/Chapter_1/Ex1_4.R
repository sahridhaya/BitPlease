#page - 23
#section - 1.3 MATRICES
#example 4


#first matrix A
A <- matrix(c(3,1,0,1,-1,2,1,1,1), 3, 3, byrow=TRUE)
A
#second matrix B
B <- matrix(c(3/8,1/8,-2/8,-1/8,-3/8,6/8,-2/8,2/8,4/8), 3, 3, byrow=TRUE)
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

#identity matrix I
I <-diag(3)
I

#checking if AB and I are equal
matequal(AB, I)

 

