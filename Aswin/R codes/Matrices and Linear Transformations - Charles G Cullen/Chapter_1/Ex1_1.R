#page - 20
#section - 1.3 MATRICES
#example 1


#first matrix A
A <- matrix(c(2,-1,0,4,3,-2), 2, 3, byrow=TRUE)
A
#second matrix B
B <- matrix(c(-4,0,6,-4,1,6), 3, 2, byrow=TRUE)
B
#multiplying A and B to AB
AB <- A %*% B

#printing AB
AB

#multiplying B and A to BA
BA <- B %*% A

#printing BA
BA