#Example 6, section 8.1 , page 414
#Consider the matrix of Example 5, i.e 
A<-matrix(c(1L,1L,4L,2L,0L,-4L,-1L,1L,5L),c(3,3))
A
#Find the possible roots of characteristic polynomial: f(L)=L^3 - 6*L^2 + 11*L -6 ;
library(Matrix)
library(polynom)
p<-polynomial(coef=c(-6,11,-6,1))
p
E<-eigen(A)
E
roots<-polyroot(p)
roots
#ROOTS ARE SAME AS EIGENVALUES 
L1=roots[c(1)]
L2=roots[c(2)]
L3=roots[c(3)]

