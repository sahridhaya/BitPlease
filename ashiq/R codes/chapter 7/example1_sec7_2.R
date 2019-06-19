#Example 1, section 7.2, page 380
#Determine least squares solution to Ax = b,where:

A<-matrix(c(1,2,-2,4,0,1,2,1,3,2,2,-1,-1,1,4,1,1,2,3,2,1,0,3,0),c(6,4))
A
b<-matrix(c(1,5,-2,1,3,5),c(6,1))
b

#since the no of rows of matrix A is greater than no of columns, we cannot directly solve for A and b
#We use the equation : (At)*A*x = (At)*b known as Least square fit
trans<-t(A)
LHS<-trans%*%A
RHS<-trans%*%b
solve(LHS,RHS)