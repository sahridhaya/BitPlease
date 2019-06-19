#Example 5 ,section 6.6, page 333
#Transform the matrix to reduced echelon form and obtain the rank of matrix:

library(matlib)
A<-matrix(c(1,0,0,1,2,1,1,0,-1,1,4,2,0,0,6,1,1,1,0,0,2,1,2,2,1),c(5,5))
A
E<-echelon(A)
E
print("Rank of the matrix is:")
c(R(E))
print("Nullity of matrix A is:")
N<-nrow(E)-c(R(E))
N
