#Example3.3,section IV.3:Mechanics of Matrix Multiplication,chapter3,page 237
A <- matrix(c(0,0,0,1,0,0),ncol = 2)
B <- matrix(c(1,4,7,2,5,8,3,6,9),ncol = 3)
C <- matrix(c(5,7,6,8),ncol = 2)
A %*% C
B %*% A
