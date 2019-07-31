# Example 4     Chapter 10       Page no.: 335
#Fitting a Polynomial Function

#Given Data
mydata<- data.frame(x= c(1,2,3,4),
                    y= c(6,11,18,27),
                   x2= c(1,4,9,16),
                   x3= c(1,8,27,64),
                   x4= c(1,16,81,256),
                   yx= c(6,22,54,108),
                   y_xx= c(6,44,162,432),
                   
                    
  stringsAsFactors = TRUE
  
)
mydata
n<-length(mydata$x)
s1<-sum(mydata$x)
s2<-sum(mydata$y)
s3<-sum(mydata$x2)
s4<-sum(mydata$x3)
s5<-sum(mydata$x4)
s6<-sum(mydata$yx)
s7<-sum(mydata$y_xx)

#solving variables using matrix form
A<- matrix(c(n,s1,s3,s1,s3,s4,s3,s4,s5), nrow=3, ncol=3, byrow=T)
A
b<- matrix(c(s2,s6,s7))
b
sol= solve(A,b)
sol

print("The  least squares quadratic polynomial is: ")
substitute(a1+a2*x+a3*x^2, list(a1=round(sol[1]), a2=round(sol[2]), a3=round(sol[3])))




