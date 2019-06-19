#Example 6, section 9.2, page 457
# Consider the linear system : X'= Ax where A is given as; Then solve for X' by finding eigenvalues and eigenvectors :
library(matrixcalc)
A<-matrix(c(1,0,0,0,3,-2,0,-2,3),c(3,3))
A

ev<-eigen(A)
ev
vect= ev$vectors  #first column is the corresponding eigenvector of the first eigenvalue.
#For eigenvalue L1= 1 , (1I3-A) = :
L1<-1
L1_mat<-matrix(c(L1-1,0,0,0,L1-3,-2,0,-2,L1-3),c(3,3))
L1_mat
matrix.rank(L1_mat) #function to find rank of matrix

#general solution is given as: X= b1*vect(1)*e^t + b2*vect(2)*e^2t + b3*vect(3)*e^4t

