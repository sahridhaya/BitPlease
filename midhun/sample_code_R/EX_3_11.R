#EX_3_11
# Mean and Variance of a Piecewise Constant PDF
x<-readline(prompt="x: ")#enter the random variable x in the console
#this enters the constant PDF of x
if(0<=x&&x<=1)
  {
  pA1<-1/3
  print("pA1:")
  return(pA1)
}else if(1<x&&x<=2){
  pA2<-2/3
  print("pA2:")
  return(pA2)
}else {
  return(0)
  }
# the mean of a uniform random variable on an interval [a,b] is ( a+b)/2 and its second moment is (a2 +ab+b2)/3. 
ex<-function(a,b)#function to return the mean
{
  return(sum(a,b)/2)
}
ex2<-function(a,b)#function to return the variance
{
  return(sum(a^2,prod(a,b),b^2)/3)
}
ex(0,1)#mean when x in between 0&1
ex2(0,1)#variance when x in 0&1
ex(1,2)#mean of x in 1&2
ex2(1,2)#variance of x in 1&2