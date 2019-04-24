# Exercise 5  Chapter: 3    PAge no.: 36
# Reducing to Row Echelon Form
# Include "Matrix" and "matlib" library
A <- matrix(c(1,2,3,3,1,2,5,5,8), nrow = 3,ncol=3,byrow=TRUE)
echelon(A)

B <- matrix(c(1,2,3,3,1,2,2,3,1) , nrow=3, ncol = 3, byrow=TRUE)
echelon(B)
