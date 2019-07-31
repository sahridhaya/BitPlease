#Example 6     Chapter 9       Page no.: 288
#Second order Newton's interpolation polynomial

#Install and import 'pracma'
#install.packages("pracma")
library(pracma)

#Given Data
mydata<- data.frame( i=c(0,1,2,3),
                     xi=c(1,2,3,4),
                     logx=c(0, 0.3010, 0.4771, 0.6021 ),
  stringsAsFactors = TRUE
)
mydata

val<-mydata$xi
x0<-val[1]
x1<-val[2]
x2<-val[3]
x3<-val[4]
f<-mydata$logx
f0<-f[1]
f1<-f[2]
f2<-f[3]
f3<-f[4]


temp<- newtonInterp(val,f)
a0<-temp[1]
a1<-temp[2]
a2<-temp[3]
a3<-temp[4]
#substituting x=2.5 in equation below :
x=2.5

pot<- a0+ a1*(x-x0) + a2*(x-x0)*(x-x1)  

cat("Estimated value of log 2.5 using Newton's interpolation method is: ", signif(pot,4))




