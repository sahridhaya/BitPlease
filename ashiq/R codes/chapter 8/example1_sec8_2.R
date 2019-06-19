#Example 1, section 8.1, page 422
#Check whether matrix B is similar to matrix A if A is given as:

A<-matrix(c(1,-2,1,4),c(2,2))
A
#let matrix P be :
P<-matrix(c(1,1,1,2),c(2,2))
P
invo<- solve(P)

#to check similarity , use the equation : B=P'AP

B<- invo %*% A %*% P
B #since equation is satisified ,we can say that B is similar to A 
