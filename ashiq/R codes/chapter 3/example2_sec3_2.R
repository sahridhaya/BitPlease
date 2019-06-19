#Example 2,section 3.2,page 198
#

library(matlib)
A<-matrix(c(1,-4,3,2,2,2,0,0,-3,1,0,-2,4,3,-3,3),c(4,4))
print(A)

C11<- cofactor(A,3,1)
print(C11)
C12<- cofactor(A,3,2)
print(C12)
C13<- cofactor(A,3,3)
print(C13)
C14<- cofactor(A,3,4)
print(C14)

#Since we choose to expand along third row ,we can solve using this equation; 
solution<- C11*A[c(3),c(1)] + C12*A[c(3),c(2)] + C13*A[c(3),c(3)] + C14*A[c(3),c(4)]
print(solution)