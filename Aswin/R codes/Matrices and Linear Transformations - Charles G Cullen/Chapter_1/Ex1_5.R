#page - 27
#section - 1.4 MATRIX ADDITION AND SCALAR MULTIPLICATION
#example 5


#first matrix A
A <- matrix(c(3,-2,4,6,0,-3,-1,7,10,9,5,0), 3, 4, byrow=TRUE)
A
#second matrix B
B <- matrix(c(2,4,6,8,0,1,3,5,7,9,-2,-4), 3, 4, byrow=TRUE)
B
#adding A and B to C
C <- A + B

#printing C
C