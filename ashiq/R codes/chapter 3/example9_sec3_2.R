#Example 9,section 3.2, page 206
#Compute the following Linear system : -2Xi + 3Xj -Xk =1 ; Xi + 2Xj - Xk =4 ; -2Xi -Xj + Xk =-3 :

library(matlib)
coeff<-matrix(c(-2,3,-1,1,2,-1,-2,-1,1),nrow=3,byrow = TRUE)
b<- matrix(c(1,4,-3),c(3,1))
print(coeff)
first.D<- det(coeff)
print(first.D)

#now replace i'th column of coefficient matrix with b to find the value of 'X1' :
coeff[,1]<- b;coeff
Second.D<-det(coeff)
x1<- Second.D / first.D
print(x1)
coeff<-matrix(c(-2,3,-1,1,2,-1,-2,-1,1),nrow=3,byrow = TRUE)

#now replace j'th element of coefficient matrix with b to find the value of X2:
coeff[,2]<- b;coeff
third.D<- det(coeff)
x2<- third.D / first.D
print(x2)
coeff<-matrix(c(-2,3,-1,1,2,-1,-2,-1,1),nrow=3,byrow = TRUE)


#now replace k'th element of coefficient matrix with b to find the value of X3:
coeff[,3]<- b;coeff
fourth.D<-det(coeff)
x3<- fourth.D / first.D
print(x3)