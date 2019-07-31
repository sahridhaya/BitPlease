#Example 8     Chapter 9       Page no.: 297
#Newton-Gregory forward difference formula

#Given Data
mydata<- data.frame(t=c(10,20,30,40,50),
                    s=c(0.1736, 0.3420, 0.5000, 0.6428, 0.7660),
  stringsAsFactors = TRUE
)
mydata

theta<-mydata$t
sin<- mydata$s
s0<-sin[1]
s1<-sin[2]
s2<-sin[3]
s3<-sin[4]
s4<-sin[5]

x0<-theta[1]
x1<-theta[2]
x2<-theta[3]
x3<-theta[4]
x4<-theta[5]

h=x1-x0
h

x=25
a1<- (x-x0)/h #for forward interpolation ,start from top
a2<- (x-x1)/h
a3<- (x-x2)/h
a4<- (x-x3)/h

f1<-s1-s0
f2<-s2-s1
f3<-s3-s2
f4<-s4-s3
delta1<- f2-f1
delta2<- f3-f2
delta3<- f4-f3

get1<-delta1-delta2
get2<-delta2-delta3

last<- get2-get1

p1<- s0+ a1*(f1)/1
p1
p2<- p1+ a1*a2*(delta1)/2
p2
p3<- p2+ a1*a2*a3*(get1)
p3
p4<- p3+ a1*a2*a3*a4*(last)
p4

cat("using Newton-Gregory forward difference formula value of sin(25) was obtained to be :",p4)

#Differed value in textbook is due to approximation upto 4 decimal places.
