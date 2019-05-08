#EX_3_5

#Then, X is exponential, with mean 1/?? = 10, which yields ?? =1 /10. 
#P(X ??? a)=P(X>a)=e^?????a.
lamda<-1/10
e<-2.718
px<-function(a,lamda)
{
  return(e^-(lamda*a))
}
if(1/4>=x||x<=3/4){
  p<-px(1/4,1/10)-px(3/4,1/10)
}
p