#Example 4, Section 1.6, page 64
#Show that matrix A is said to be row equivalent to matrix D, where D is obtained by successive elementary operations

A<-matrix(c(1,2,1,2,1,-2,4,3,2,3,2,3),c(3,4))
add<- 2* A[c(3),c(1,2,3,4)] + A[c(2),c(1,2,3,4)]
A[c(2),c(1,2,3,4)]<-add;A
print(A)
B=A
temp=B[c(2),c(1,2,3,4)]   #interchange rows 2 and 3
tem2=B[c(3),c(1,2,3,4)]
B[c(3),c(1,2,3,4)] = temp
B[c(2),c(1,2,3,4)] = tem2
print(B)
C=B
adon<- 2* C[c(1),c(1,2,3,4)]
C[c(1),c(1,2,3,4)]<-adon;C
print(C)
D=C
print(D)  #D is equivalent to C therefore equivalent to A


