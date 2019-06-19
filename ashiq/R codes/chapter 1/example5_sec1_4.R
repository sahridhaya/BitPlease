#Example 5, section 1.4, page 42
#Prove the property of matrix multiplication; A(B+C)= AB + AC

A<-matrix(c(2,3,2,-1,3,2),c(2,3))
B<-matrix(c(1,2,3,0,2,-1),c(3,2))
C<-matrix(c(-1,1,2,2,0,-2),c(3,2))
First = A %*% (B + C)
print(First)
Second = A%*%B + A%*%C
print(Second)
identical(First,Second) #returns True if both matrices are equal
