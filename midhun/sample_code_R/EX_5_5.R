#EX_5_5
#it is said that the probabilty of winning kasparov is 0.99 independent of other games
n<-100#initializing the variables like n,p,q
p<-0.01
q<-1-p
pz1<-numeric(4)#representing a sample list
px1<-numeric(4)
#function to calculate PX(x)
px<-function(x)
{
  if(x==0)
  {
    return((1-0.01)^100)
  }else if(x==2||x==5||x==10){
    return(prod(factorial(n),(p^x),q^(n-x))/prod(factorial(n-x),factorial(x)))
  }
}
#printing the PX(x)
px1<-c(px(0),px(2),px(5),px(10))
#function to calculate PZ(x)
pz<-function(x)
{
  (exp(1)^-1)/factorial(x)
}
#printing the PZ(x)
pz1<-c(pz(0),pz(2),pz(5),pz(10))
px1
pz1
