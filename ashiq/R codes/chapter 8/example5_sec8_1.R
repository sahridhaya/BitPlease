#Example 5, sectio 8.1, page 412
#Find the characteristic polynomial of matrix A:

library(pracma)

#assume value of lamda as 0 ;
lamda<-0
A<-matrix(c(lamda-1,-1,-4,-2,lamda-0,4,1,-1,lamda-5),c(3,3))
cpol<-charpoly(A)     #gives the characteristic equation from the matrix A
polynomial(coef=c(-cpol[c(4)],cpol[c(3)],-cpol[c(2)],cpol[c(1)]))    #converts it into a polynomial
