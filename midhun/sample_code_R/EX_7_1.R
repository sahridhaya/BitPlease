#EX_7_1
EX<-2#expected mean
#MArkov inequality asserts that
#function to calculatemthe Msrkov Inequality
PX<-function(x)
{
  if(x>=2&&x<3)
  {
    return(1)
  }else if(x>=3&&x<4){
    return(2/3)
  }else if(x>=4){
    return(2/4)
  }
}
#function to calcualte the normal probability
px<-function(x)
{
  if(x>=2&&x<3)
  {
    return(0.5)
  }else if(x>=3&&x<4){
    return(0.25)
  }else if(x>=4){
    return(0)
  }
}

c<-c(PX(2),PX(3),PX(4),px(2),px(3),px(4))
compare<-matrix(c,nrow=3,ncol=2,byrow=T)
compare#matrix to compare both Markov Inequality and normal proabability