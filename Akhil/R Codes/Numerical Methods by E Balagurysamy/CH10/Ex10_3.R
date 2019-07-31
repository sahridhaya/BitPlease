# Example 3     Chapter 10       Page no.: 332
#Estimate the temperature using fitting of Trancedental Equation.


#assuming f(x)= e^0.25t
mydata<- data.frame( time= c(1,2,3,4),
                     temp= c(70,83,100,124),
                     fx=   c(1.28, 1.65, 2.12, 2.72),
                     y_fx= c(89.89, 136.84, 211.70, 337.07),
                     fxx=  c(1.65, 2.72, 4.48, 7.39),
                     
  stringAsFactors= TRUE
)
mydata

n<-length(mydata$time)
s2<-sum(mydata$temp)
s3<-sum(mydata$fx)
s4<-sum(mydata$y_fx)
s5<-sum(mydata$fxx)

#solving for intercept 'a' and slope 'b'
b= signif((n*s4 - s3*s2) / (n*s5 -(s3*s3)),4)
b
a= signif((s2 - (b*s3)) /n,4)
a

t<- substitute(b*e^(0.25*t)+a ,list(a=a,b=b,e=2.71828,t=6))

print("The equation is")

cat("T=") 
t
value<-b*2.71828^(0.25*6)+a

cat(value,"degree Celcius is the temperature at t=6 minutes")

#Calculated value differ slightly from the value in textbook due to roundoff errors.

cat("Plot for Temperature increase with time is :")
plot(mydata$temp~mydata$time, mydata, col="firebrick", lwd=2, main="Temp vs Time", xlab="minutes",ylab="Celsius")


