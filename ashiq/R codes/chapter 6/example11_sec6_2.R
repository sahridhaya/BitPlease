#Example 11, section 6.2,page 283
#In R3 let v1=c(1,2,1) ,v2=c(1,0,5) and v3=c(1,1,0). Check whether the vector v=c(2,1,5) is a linear combination of v1,v2 and v3 if we can find real numbers c1,c2, and c3 so that c1v1 + c2v2+ c3v3=v :

v<-matrix(c(2,1,5),nrow=3,byrow=T)
A<-matrix(c(1,1,1,2,0,1,1,2,0),nrow=3,byrow=T)
v1<-A[c(1,2,3),c(1)]
v2<-A[c(1,2,3),c(2)]
v3<-A[c(1,2,3),c(3)]
#this is of the form Ax=v ,hence to find value of c1 ,c2, and c3:
c.matrix<-solve(A,v)
c.matrix
C1<- c.matrix[c(1)]
C2<- c.matrix[c(2)]
C3<- c.matrix[c(3)]

sol<-matrix(c( C1*v1 + C2*v2 + C3*v3),nrow=3,byrow=T)
sol
all.equal(sol,v) #returns True if v is linear combination of v1,v2 and v3