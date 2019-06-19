#Example 5,section 3.2, page 200
#Compute adjoint of matrix A:

library(matlib)
A<- matrix(c(3,-2,1,5,6,2,1,0,-3),nrow=3,byrow = TRUE)
print(A)

adjoint(A)