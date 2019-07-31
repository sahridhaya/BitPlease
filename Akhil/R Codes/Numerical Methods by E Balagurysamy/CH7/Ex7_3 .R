# Example 3     Chapter 7       Page no.: 220
# Gaussian Elimination

#import 'matlib' library
install.packages("matlib")
library(matlib)

#Define system of equations in matrix form 
A<-matrix(c(2,2,1,4,2,3,1,1,1),nrow = 3,ncol = 3,byrow = TRUE)
A
b<-matrix(c(6,4,0),nrow = 3,ncol = 1)
b

AB<-gaussianElimination(A,b,tol = 1,fractions=TRUE,verbose = TRUE) #this function returns the matirx AB after doign gaussian function.

AB

# The solution given in the text book is wrong as the system of equation was modified on starting the solution.
# Not Solvable