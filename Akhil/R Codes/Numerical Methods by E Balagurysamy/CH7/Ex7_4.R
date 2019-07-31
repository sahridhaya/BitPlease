# Example 4     Chapter 7       Page no.: 229
# Gauss Jordan Elimination

#import 'pracma' library
install.packages("pracma")
library(pracma)

#Define system of equations in matrix form 
A<-matrix(c(2,4,-6,1,3,1,2,-4,-2),nrow = 3,ncol = 3,byrow = TRUE)
A
B<-matrix(c(-8,10,-12),nrow = 3,ncol = 1)
B
AB<-cbind(A,B)

values<-rref(AB)[,4] # Gauss Jordan Elimination
x<-values[1]
y<-values[2]
z<-values[3]

sprintf("Value of x,y and z are %f,%f and %f",x,y,z)

