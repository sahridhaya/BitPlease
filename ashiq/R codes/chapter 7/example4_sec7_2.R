#Example 4, section 7.2, page 384
#(a)
#(b)

#section(a)
library(polynom)
b=matrix(c(4.5,5.5,5.7,6.6,7.0,7.7,8.5,8.7,9.5,9.7),c(10,1))
b
A=matrix(c(3,4,5,6,7,8,9,10,11,12,1,1,1,1,1,1,1,1,1,1),c(10,2))
A
x=c('b1','b0')
x

trans<-t(A)
LHS<-trans %*% A
RHS<-trans %*% b
sol<-solve(LHS,RHS)
sol
b1<-sol[c(1)]
b0<-sol[c(2)]
y<-polynomial(coef=c(b0,b1))
y #amount of beta present and x is the amount of alpha used; 

#section(b),
#value of alpha, x=30
x<-30
y<- b1*(x) + b0
print("therefore ounces of beta present in a gallon XXX is:")
y 