#Example3.1,section IV.3:Mechanics of Matrix Multiplication,chapter3,page 237
A <- matrix(c(0,0,0,0),ncol = 2)
B <- matrix(c(1,-1,3,1,2,-1),ncol = 3)
C <- matrix(c(2,1,3,4),ncol = 2)
A %*% B
C %*% A
#Multiplying by a zero matrix from the left or from the right results in a zero matrix.
