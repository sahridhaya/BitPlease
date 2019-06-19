#Example 1, section 6.7, page 341
#Let S={v1,v2,v3,v4} be a basis for R4, where;
v1=c(1,1,0,0)
v2=c(2,0,1,0)
v3=c(0,1,2,-1)
v4=c(0,1,-1,0)
#if v=c(1,2,-6,2) compute [v]s.

library(matlib)
mat<- matrix(c(v1,v2,v3,v4),c(4,4))
mat
v<-matrix(c(1,2,-6,2),c(4,1))
v
E<-echelon(mat,v)
E

#coordinate vector of v with respect to the basis S is:
Vs<- c(E[c(1),c(5)], E[c(2),c(5)], E[c(3),c(5)], E[c(4),c(5)])
Vs
