#Example 5, section 9.2, page 457
#For the system ,solve te initial value problem determined by the initial condition x1(0)=4, x2(0)=6, x3(0)=8 :
library(matlib)
#general solution is in the form X=Pu
X<-matrix(c(4,6,8),c(3,1))
X
P<-matrix(c(1,1,1,1,2,3,1,4,16),c(3,3))
P
u<- matrix(c('b1e^t','b2e^2t','b3e^4t'),c(3,1))
u
#For X(0); value of t=0, therefore to find the values of b1,b2 and b3
E<-echelon(P,X)
b<-E[c(1,2,3),c(4)]
b1<-b[c(1)]
b2<-b[c(2)]
b3<-b[c(3)]

# therefore, X= b1*P1*e^t + b2*P2*e^2t + b3*P3*e^4t
