#Example 4,section 1.3, page 23
#Find the matrix multiplication :
A<- matrix(c(1,3,2,1,-1,4), nrow= 2, ncol= 3)
B<- matrix(c(-2,4,2,5,-3,1), nrow= 3, ncol=2 )

mul <- A%*%B
print(mul) 