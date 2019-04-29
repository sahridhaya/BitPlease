#page - 123
#section - 4.2 MATRIX REPRESENTATION
#example 1

#w-coordinate matrices
Crdwb1 <- matrix(c(-2,5,6,-4), 4, 1, byrow=TRUE)
Crdwb2 <- matrix(c(-5,12,11,-5), 4, 1, byrow=TRUE)
Crdwb3 <- matrix(c(3,-5,-5,3), 4, 1, byrow=TRUE)

#matrix T
Tmat <- matrix(c(Crdwb1,Crdwb2,Crdwb3), 4, 3)
Tmat

Crdwv <- matrix(c(3,-5,7), 3, 1)
Crdwv

CrdwTv = Tmat %*% Crdwv
CrdwTv