#Example 5, section 1.3, page 24
#Compute the (3,2) entry of A and B matrices i.e find the 3rd row and 2nd column of matrix A and B respectively and multiply them.

A<-matrix(c(1,4,0,-2,2,1,3,1,-2),nrow=3,ncol=3)
B<-matrix(c(1,3,-2,4,-1,2),nrow=3,ncol=2)
x<-A[c(3),c(1,2,3)] #to access 3rd row of matrix A
y<-B[c(1,2,3),c(2)] #to access 2nd column of matrix B
solution = x%*%y
print(solution)