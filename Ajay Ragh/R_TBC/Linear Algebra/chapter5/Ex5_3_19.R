#Example3.19,chapter 5,section II.3 Eigenvalues and Eigenvectors,page 404
T <- matrix(c(2,0,-4,-2,1,8,2,1,3),ncol = 3)
a <- eigen(T)
a$values
