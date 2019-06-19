#Example 21, section 1.3,page 30
#Find Cii of matrix C using method of multiplying partitioned matrices(block multiplication), if AB = C,where A and B are 4x4 and 4x6 matrix respectively.
A<- matrix(c(1,0,2,0,0,2,0,1,1,3,-4,0,0,-1,0,3),c(4,4))
B<- matrix(c(2,0,1,-3,0,1,3,-1,0,1,0,2,1,-1,0,1,1,2,1,0,-1,2,0,-1),nrow=4,ncol=6)
C<- A%*%B
#we know ,Cii = (Aii)(Bii) + (Aij)(Bji) by using block multiplication
Aii= A[c(1,2),c(1,2)]
Bii= B[c(1,2),c(1,2,3)]
Aij= A[c(1,2),c(3,4)]
Bji= B[c(3,4),c(1,2,3)]
Cii <- Aii %*% Bii + Aij %*% Bji
print(Cii) 
