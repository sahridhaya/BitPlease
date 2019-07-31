#Example 4     Chapter 9       Page no.: 282
#Determining square root using Lagrange's interpolation

#Given Table
mydata<- data.frame(x=c(1,2,3,4,5),
                    fx=c(sqrt(1), sqrt(2), sqrt(3), sqrt(4), sqrt(5)),
                     stringsAsFactors = TRUE
)
mydata

val<-mydata$x
fun<-mydata$fx

x0<-val[2]
x1<-val[3]
x2<-val[4]

f0<-fun[2]
f1<-fun[3]
f2<-fun[4]

var=2.5

I0<- ((var-x1)*(var-x2))/((x0-x1)*(x0-x2))
I0
I1<- ((var-x0)*(var-x2))/((x1-x2)*(x1-x0))
I1
I2<-((var-x0)*(var-x1))/((x2-x0)*(x2-x1))
I2

Ans<- signif((f0*I0) + (f1*I1) + (f2*I2),5)
cat("Calculated square root of 2.5 is :", Ans)

Original<- signif(sqrt(var),5)
cat("Original square root of 2.5 is :", Original)

error<- Original-Ans
cat("Error is :", error)
