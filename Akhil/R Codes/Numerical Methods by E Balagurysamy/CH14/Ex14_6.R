# Example 6     Chapter 14       Page no.: 478
# Power method

# Include "matlib" library
install.packages("matlib")
library(matlib)

#Given Matrix
A<-matrix(c(1,2,0,2,1,0,0,0,-1),nrow = 3,ncol = 3,byrow = TRUE)
A
eigen<-powerMethod(A)

EigenVector<-(eigen$vector[,1]-eigen$vector[3,1])

EigenVector<-matrix(EigenVector,nrow = 3,ncol = 1,byrow = TRUE)

EigenVector<-(EigenVector/EigenVector[1]) #This is Eigen vector Corresponding to largest Eigen Value.

EigenValue<-eigen$value #This is Largest Eigen Value.

sprintf("The largest eigen value Lampda1=%g",EigenValue)

print("The Eigen Vector corresponding to eigen value")

print(EigenVector)
