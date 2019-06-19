#Example 15, section 1.2 , page 16
#Find the transpose of matrices: A,B,C,D,E

A<-matrix(c(4,0,-2,5,3,-2),c(2,3))
B<-matrix(c(6,3,0,2,-1,4,-4,2,3),c(3,3))
C<-matrix(c(5,-3,2,4,2,-3),c(3,2))
D<-matrix(c(3,-5,1),c(1,3))
E<-matrix(c(2,-1,3),c(3,1))
Atrans = t(A)
Btrans = t(B)
Ctrans = t(C)
Dtrans = t(D)
Etrans = t(E)
print(Atrans)
print(Btrans)
print(Ctrans)
print(Dtrans)
print(Etrans)
