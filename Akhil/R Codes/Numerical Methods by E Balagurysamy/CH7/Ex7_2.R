# Example 2     Chapter 7       Page no.: 214
# Gaussian Elimination

#import 'matlib' library
install.packages("matlib")
library(matlib)

#Define system of equations in matrix form 
A<-matrix(c(3,6,1,2,4,3,1,3,2),nrow = 3,ncol = 3,byrow = TRUE)
A
B<-matrix(c(16,13,9),nrow = 3,ncol = 1)
B


AB<-gaussianElimination(A,B) #this function returns the matirx AB after doing gaussian function.
values<-AB[,4]
x<-values[1]
y<-values[2]
z<-values[3]

sprintf("Value of x,y and z are %f,%f and %f",x,y,z)

