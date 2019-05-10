#Example3.12,section IV.3:Mechanics of Matrix Multiplication,chapter3,page 240
A <- matrix(c(2,0,0,-1),ncol = 2)
B <- matrix(c(2,-1,1,3,4,4,-1,4),ncol = 4)
A %*% B
#From the left, the action of multiplication by a diagonal matrix is to rescales the rows.
C <- matrix(c(1,2,2,2,1,2),ncol = 3)
D <- matrix(c(3,0,0,0,2,0,0,0,-2),ncol = 3)
C %*% D
#From the right such a matrix rescales the columns.