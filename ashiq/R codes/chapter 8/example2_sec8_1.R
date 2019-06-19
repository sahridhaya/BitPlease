#Example 2, section 8.1, page 409
#Find the eigen vector and eigen values of A:

A<-matrix(c(0,1/2,1/2,0),c(2,2))
A
eigen(A,only.values=FALSE, EISPACK = FALSE)
