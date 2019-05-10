#EX_4_9
lamda<-c(6,4)#expressing lamda 
p<-1/3#initiating probabilty of selecting one teller
s<-1#expressed the free variable as 1
fx<-function(x)
{
  return((exp(1)^x)*((2/3)*6*exp(1)^(-6*x)+(1/3)*4*exp(1)^(-4*x)))
}#function for calculating the M(s)
Ms<-integrate(fx,0,Inf)  #integrate to get the M(s)       
Ms$val#giving the value of M(s)