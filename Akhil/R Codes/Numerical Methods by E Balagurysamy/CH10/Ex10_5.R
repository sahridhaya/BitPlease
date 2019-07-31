# Example 5     Chapter 10       Page no.: 342
#Fitting data in Regression Plane

#Import 'matlib' and 'Matrix'
install.packages("matlib")
library(matlib)
install.packages("Matrix")
library(Matrix)

#Given dataa
mydata<- data.frame(x= c(1,2,3,4),
                    z= c(0,1,2,3),
                    y= c(12,18,24,30),
                    xx= c(1,4,9,16),
                    zz= c(0,1,4,9),
                    xz= c(0,2,6,12),
                    yx= c(12,36,72,120),
                    yz= c(0,18,48,90),
                    
stringsAsFactors = TRUE  
)ri
mydata

n<-length(mydata$x)
s1<-sum(mydata$x)
s2<-sum(mydata$z)
s3<-sum(mydata$y)
s4<-sum(mydata$xx)
s5<-sum(mydata$zz)
s6<-sum(mydata$xz)
s7<-sum(mydata$yx)
s8<-sum(mydata$yz)

A<-matrix(c(n,s1,s2,s1,s4,s6,s2,s6,s5), nrow=3, ncol=3, byrow=T)
A
b<-matrix(c(s3,s7,s8))
b

d <- round(det(A),5) # Checking for Singularity
if(d==0){
  cat("The Matrix is Singular, so solution of the matrix is not possible.\nThus No Regression plane exists for the given data.\n")
}else{
showEqn(A,b)
k <- Solve(A,b)
}

# Here the Question is Wrong. The given table in the text book is not correct.
# In the textbook the 3rd term of 1st equation(In the sysytem of equations) is writen as '5' instead of '6' which is the sum of 'z' values.
# Thus when using the correct Methodology obtained matrix becomes singular and thus insolvabe.



