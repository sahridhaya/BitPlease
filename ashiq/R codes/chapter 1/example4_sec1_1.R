#Example 4,page 4
#Find the solution for: x + 2y -3z = -4 ; 2x + y -3z= 4 ;
A=matrix(c(1L,2L,-3L,2L,1L,-3L),2,3,T)
b=matrix(c(-4L,4L),2,1,T)
#if no of columns is greater than rows,use single valued decomposition(svd):
asvd <-svd(A)
adiag <- diag(1/asvd$d)
adiag[2,2] =0
solution= asvd$v %*% adiag %*% t(asvd$u) %*% b
print(paste(solution))
