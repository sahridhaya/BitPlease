#EX_3_3
#A PDF can be arbitrarily large
#Consider a random variable X with PDF 

fx<-function(x){
  if(0>=x||x<=1){return(1/(sqrt(x)*2))
  }else{return(0)
  }}
int<-integrate(fx,0,1)
int$value
