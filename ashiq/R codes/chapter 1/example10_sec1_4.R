#Example 10, section 1.4, page 45
#Prove the property of Scalar multiplication ; A(rB) = r(AB)= r(A)B where r is a real number and A and B are mxn matrices
#given r= -2 ;

r<- -2
A<-matrix(c(1,-2,2,0,3,1),c(2,3))
B<-matrix(c(2,1,0,-1,4,-2),c(3,2))
First= A %*% (r * B)
print(First)
Second= r * (A%*%B)
print(Second)
Third= (r*A) %*% B
print(Third)
identical(First,Second)
identical(First,Third)
identical(Second,Third)


