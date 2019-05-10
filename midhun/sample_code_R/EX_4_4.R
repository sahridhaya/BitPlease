#EX_4_4

exponential_transform<-function(l,s){
  return(l/l-s)
  
}
y<-function(a,b,l,s)
{
  (exp(1)^b*s)*l/l-a*s
}
print("l/l-s")
exponential_transform(1,0)
y(2,3,1,1)

