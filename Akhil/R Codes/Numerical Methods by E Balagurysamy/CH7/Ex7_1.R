# Example 1     Chapter 7       Page no.: 211
# Solving System of Equations

#Define Sysytem of Equations in Matrix form
A<-matrix(c(3,2,1,2,3,2,1,2,3),nrow = 3,ncol = 3,byrow = TRUE)
A
b<-matrix(c(10,14,14),nrow = 3,ncol = 1)
b

k <- solve(A,b)
cat("Solution:\n x=",k[1],"\n y=",k[2],"\n z=",k[3])

