#EX_4_7
x<-c(-1,0,4,5)
px<-c(1/4,1/2,1/8,1/8)
Ms<-expression((1/4)*exp(1)^(-1*s)+(1/2)*exp(1)^(0*s)+(1/8)*exp(1)^(4*s)+(1/8)*exp(1)*(5*s))#expressing the transform function
s<-1#giving free variable s as 1
Ms1<-function(a,b){
  return((1/a)*exp(1)^b)
}#function for calculating the transform at s=1
Ms<-sum(Ms1(1/4,-1),Ms1(1/2,0),Ms1(1/8,4),Ms1(1/8,5))#the value of transform at free variable =1
Ms