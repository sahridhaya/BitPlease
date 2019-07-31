#Example 5     Chapter 9       Page no.: 283
#Lagrange's Polynomial

# Installing and importing required packages

install.packages("polynom")
install.packages("stats")
library("polynom")
library("stats")

#Given data
mydata<- data.frame( i=c(0,1,2,3),
                    xi=c(0,1,2,3),
                    ex=c(0,1.7183,6.3891,19.0855),
                    
  stringsAsFactors = TRUE
)
mydata

q<-poly.calc(mydata$xi, mydata$ex)  #function to calculate lagrange interpolation polynomial
q
beta<-coef(q) #obtain coefficients
beta
y1<-beta[2]
y2<-beta[3]
y3<-beta[4]

#substituting x=1.5 in above equation :
x=1.5
uno<-x
cube<-x*x*x
square<-x*x

pot<-(y3*cube)+ (y2*square) + (y1*uno)
pot
Ans<- pot+1

cat("Value of e^1.5 is :", signif(Ans,5))

