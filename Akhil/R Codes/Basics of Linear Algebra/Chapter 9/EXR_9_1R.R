# Exercise 1     Chapter 9       Page no.: 155
# Eigen values of matrices
# Include "Matrix" and "matlib" library
A <-  matrix(c(1,0,-1,1,2,1,2,2,3), nrow = 3 , byrow = TRUE)
a <- eigen(A)$values    
a
B <-  matrix(c(0,1,0,0,0,1,1,-3,3), nrow = 3 , byrow = TRUE)
b <- eigen(B)$values  
b
C <-  matrix(c(complex(real=2, imaginary = -1),0,complex(imaginary = 1,real = 0),0,complex(real=1,imaginary = 1),0,complex(imaginary = 1),0,complex(real=2,imaginary = -1)), nrow = 3 , byrow = TRUE)
c <- eigen(C)$values    
c
