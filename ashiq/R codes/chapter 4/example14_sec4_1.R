#Example 14, section 4.1,page 225
#If u=(2,4) and v=(-1,2) ,then find angle between the two vectors:
library(Matrix)
u<-c(2,4)
v<-c(-1,2)

DOT= function(u,v)
{
  sis<- u[1]*v[1] + u[2]*v[2]
  return(sis)
  
}
upper<- DOT(u,v)
print(upper)  # gives the dot product of u and v
 
magnitude =function(u)
{
  sum<-0
  s1<-0
  m<-0
  for(num in u)
    { s1<- num^2
      sum=sum+s1  
      next }
 m<-sqrt(sum)
 return(m)
} 

mag_u<-magnitude(u)  #gives magnitude of u
print(mag_u)
mag_v<-magnitude(v)  #gives magnitude of v
print(mag_v)

cos_theta<- upper/(mag_u*mag_v) #value of cos'theta
print(cos_theta)
