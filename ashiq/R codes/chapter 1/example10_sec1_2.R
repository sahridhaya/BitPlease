#Example 10, Section 1.2, page 14
#If A=[aij] and B[bij] are mxn matrices ,then sum of A and B is given by C[ij]. solve for matrix C.

A<-matrix(c(1,2,-2,-1,4,3), c(2,3))
B<-matrix(c(0,1,2,3,-4,1),c(2,3))
A<- A + B
print(A)

