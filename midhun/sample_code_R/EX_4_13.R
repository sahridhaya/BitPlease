#EX_4_13
x<-numeric(3)#initializing the variables x,y,w
y<-numeric(3)
py<-numeric(3)#initializing the probability of each variable
w<-numeric(5)
py1<-numeric(3)
pw1<-numeric(5)
x<-c(1:3)#representing the sample space of each variable
y<-c(0:2)
w<-c(1:5)
px<-function(x)#function to print the probabilty of x
{
  if(1<=x&&x<=3)
    {
      return(1/3)
    }
  else
    {
      return(0)
    }
}
py<-function(y)#function to print the sample space of probability of y
{
  if(y==0){
  return(1/2)
}else if(y==1){
  return(1/3)
}else if(y==2){
  return(1/6)
}else{
  return(0)
}
}
for(i in 1:3)#loop to print the probabilty of y
{
  py1[i]<-py(i-1)
}
py1
pw<-function(w)#function to print the sample space of probabilty of w
{
  if(w==1)
  {
    return(px(1)*py(0))
  }else if(w==2){
    return(sum(prod(px(1),py(1)),prod(px(2),py(0))))
  }else if(w==3){
    return(sum(prod(px(1),py(2)),prod(px(2),py(1)),prod(px(3),py(0))))
  }else if(w==4){
    return(sum(prod(px(2),py(2)),prod(px(3),py(1))))
  }else if(w==5){
    return(prod(px(3),py(2)))
  }else{
    return(0)
  }
}
for(i in 1:5)#loop to print the probabilty of w
{
  pw1[i]<-pw(i)
}
pw1
