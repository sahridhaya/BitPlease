# Example 5     Chapter 7       Page no.: 234
# Dolittle Algorithm

#import 'matrixcalc' library
install.packages("matrixcalc")
library(matrixcalc)

#Define system of equations in matrix form 
A<-matrix(c(3,2,1,2,3,2,1,2,3),nrow = 3,ncol = 3,byrow = TRUE)
A
B<-matrix(c(10,14,14),nrow = 3,ncol = 1)
B

#LU Decomposition
luA<-lu.decomposition(A)
L<-luA$L
L
U<-luA$U
U

z1<-B[1]
z2<-B[2]-L[2,1]*z1
z3<-B[3]-L[3,1]*z1-L[3,2]*z2

#By Back Substitution we get,
x3=z3/(U[3,3])
x2=(z2-U[2,3]*x3)/U[2,2]
x1=(z1-U[1,2]*x2-U[1,3]*x3)/U[1,1]
sprintf("Values of x1, x2 and x3 are %f,%f and %f",x1,x2,x3)
