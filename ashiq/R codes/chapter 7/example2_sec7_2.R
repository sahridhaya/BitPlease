#Example2, section 7.2,page 381
#Solve using the QR factorization of A :

library(matlib)
A<-matrix(c(1,2,-2,4,0,1,2,1,3,2,2,-1,-1,1,4,1,1,2,3,2,1,0,3,0),c(6,4))
A
b<-matrix(c(1,5,-2,1,3,5),c(6,1))


qr<-QR(A) #gets both Q and R factors of matrix A
qr

Qknown<-qr$Q
Qtrans<-t(Qknown) #transverse of Q
RHS<-Qtrans%*%b 
Rknown<-qr$R

sol1<-solve(Rknown,RHS) #answer is same as previous example
sol1
#solving A and b usin least squares
trans<-t(A)
LHS<-trans%*%A
RHS<-trans%*%b
sol2<-solve(LHS,RHS)
#verification
all.equal(sol1,sol2)#returns if both solutions are equal