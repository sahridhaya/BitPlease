#Example 11, section 1.4, page 46
#solve for property (AB)t = BtAt, where A and B are matrices and t stands for transpose of matrix

A<-matrix(c(1,2,3,-1,2,3),c(2,3))
B<-matrix(c(0,2,3,1,2,-1),c(3,2))
trans = t(A%*%B)
print(trans)
temp = t(B) %*% t(A)
print(temp)
identical(trans,temp)

