#Example 1, section 8.3, page 434
#Given the symmetric matrix A , check whether A is diagonalizable .

library(pracma)
A<- matrix(c(0,0,-2,0,-2,0,-2,0,3),c(3,3))
A
cpol<-charpoly(A)
cpol
p<-polynomial(coef=c(cpol[c(4)],cpol[c(3)],cpol[c(2)],cpol[c(1)]))    #converts it into a polynomial
p
polyroot(p) #finds the root of characteristic polynomial which is equal to eigenvalues
ev<-eigen(A) #gives eigenvalues and eigenvectors directly from matrix
ev

v<-ev$values 

D<-diag(v)
D