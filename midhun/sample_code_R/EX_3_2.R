#EX_3_2
#Piecewise Constant PDF
#Alvin's driving time to work is between 15 and 20 minutes if the day is sunny, 
#and between 20 and 25 minutes if the day is rainy, 
#with all times being equally likely in each case. 
#Assume that a day is sunny with probability 2/3 and rainy with probability 1/3. 
#What is the PDF of the driving time, viewed as a random variable X? 

#We interpret the statement that "all times are equally likely" in the sunny and the rainy cases, 
#to mean that the PDF of X is constant in each of the intervals [15,20] and [20,25]
#Furthermore, since these two intervals contain all possible driving times, the PDF should be zero everywhere else: 
x<-readline(prompt="x: ")
if(15>=x||x<=20){
  print("C1")
}else if(20>=x||x<=25){
  print("C2")
}else{
  print("0")
}
t<-2
f <- function(c1)c1
  


cum<-integrate(f,15,20)
p_sunnyday<-cum$value/17.5
p_sunnyday
f2<-function(c2)c2
cum2<-integrate(f2,20,25)
p_rainyday<-(cum2$value/22.5)
p_rainyday
c1<-(2/3)/p_sunnyday
c2<-(1/3)/p_rainyday
c1
c2
