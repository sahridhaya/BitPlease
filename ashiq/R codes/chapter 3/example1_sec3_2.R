#Example 1,section 3.2,page 196
#Let A=[aij] ne an nxn matrix.Let Mij be the (n-1)x(n-1) submatrix of A obtained by deleting ith row and jth column of A. The determinant det(Mij) is called the minor of aij. The cofactor Aij of aij is defined as:

library(matlib)
A<-matrix(c(3,4,7,-1,5,1,2,6,2),c(3,3))

#minor of matrix A
D<- minor(A,1,2)
print(D)
D2<- minor(A,2,3)
print(D2)
D3<- minor(A,3,1)
print(D3)
#cofactors of matrix A:
C1<-cofactor(A,1,2)
print(C1)
C2<-cofactor(A,2,3)
print(C2)
C3<-cofactor(A,3,1)
print(C3)

