#Example3.6,chapter 5,section II.3 Eigenvalues and Eigenvectors,page 398
T <- matrix(c(2,0,0,0),ncol = 2)
a <-eigen(T)
a$values
a$vectors
