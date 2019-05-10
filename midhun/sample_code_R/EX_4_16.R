#EX_4_16
#let l=8
l<-8#define length of stick as 8
Mx<-function(l)
{
  return(l/4)
}#function to calculate the mean of x
Exy<-function(y)
{
  return(y/2)
}#function to calculate E(x|y)
varxy<-function(y)
{
  return((y^2)/12)
}#function to clcualte var(x|y)
vary<-function(l)
{
  return((l^2)/12)
}#function to calculate var(y)
f<-function(y)
{
  return((y^2)/(12*l))
}#function for the integration sti0:l),replace=T)#y is a random variable from 0 to length of stick(l)
Exy(y)#to print E(x|y)
varxy(y)#to print var(x|y)
integral<-integrate(f,0,l)#to calculate E(var(x|y))
Evarxy<-integral$val
varx<-sum(Evarxy,varExy)
varx#to final calcualtion of var(x)
