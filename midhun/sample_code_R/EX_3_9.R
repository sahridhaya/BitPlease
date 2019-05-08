#EX_3_9
binary_message<-c(-1,1)
mean<-0
sd<-1
pi<-3.14
e<-2.817
variance<-sd^2
x<-readline(prompt="x: ")
if(0>x){
  return(-1)
}else{return(1)}
f<-function(y){(1/sqrt(2*pi))*e^((-y^2)/2)}
f1<-integrate(f,-Inf,1)
f1$val
p_N_greater_1<-1-f1$val
p_N_greater_1