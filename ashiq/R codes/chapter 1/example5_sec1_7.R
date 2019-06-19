#Example 5, section 1.7,page 96
#Find the inverse of the matrix and verify AA'= A'A gives identity matrix

A<-matrix(c(1,0,5,1,2,5,1,3,1),c(3,3))
print(A)
Ainv<- solve(A)
print(Ainv)  #inverse of A
LHS<- A*Ainv
RHS<- Ainv*A

all.equal(LHS,RHS) 

