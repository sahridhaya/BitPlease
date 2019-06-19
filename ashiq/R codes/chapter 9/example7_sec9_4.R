#Example 7, section 9.4, page 481
#Consider the quadratic form in x1,x2,x3, given by; 3(X2)^2 + 8(X2*X3) - 3(X3)^2 = (xT)Ax

library(matrixcalc)
A<-matrix(c(0,0,0,0,3,4,0,4,-3),c(3,3))
A
E<-eigen(A)

value<- E$values #eigenvalues are obtained
x<-value[c(2)]
y<-value[c(3)]
value[c(2)]=y
value[c(3)]=x
D<-diag(value) #Matrix with eigenvalues as diagonal
D

#let H matrix be:
k<-1/sqrt(5)
H<-matrix(c(k,0,0,0,k,0,0,0,1),c(3,3))
H
#then..
D1<- t(H) %*% D %*% H
rank<-matrix.rank(D1)
rank

