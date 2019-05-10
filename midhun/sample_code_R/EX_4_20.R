#EX_4_20
x<-numeric(3)
x1<-numeric(3)
x<-sample(c(0:2),size=3,replace=T)
x
fx<-function(x)
{
  if(x<1)
  {
    return(1/3)
  }else if(x>=1){
    return(2/3)
  }
}
for(i in 1:3)
{
  x1<-return(fx(x[i-1])) 
}
x1