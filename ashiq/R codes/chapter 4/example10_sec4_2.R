#Example 10, section 4.2, page 237
#Check whether Cauchy-Schwartz inequality i.e |u.v|<= ||u|| ||v||  stands true for vectors u and v ,if u=(2,3,2,-1) and v=(4,2,1,3) and hence find the angle between non-zero vectors:

library(matlib)
u<-c(2,3,2,-1)
v<-c(4,2,1,3)

DOT= function(u,v)
{
  sis<- u[1]*v[1] + u[2]*v[2] + u[3]*v[3] + u[4]*v[4]
  return(sis)
  
}
sol<- DOT(u,v)
print(sol)

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

mag_u<- magnitude(u)
mag_v<- magnitude(v)
mag_UV <- mag_u * mag_v 
print(mag_UV)

if(sol <= mag_UV) #checks Cauchy-Schwarz inequality
{
  cos_angle<- abs(sol/mag_UV )
  if(cos_angle >= -1 && cos_angle <= 1)  #cheks if cos'theta lies within the range -1<=angle<=1
  {
    print(cos_angle)
    angle(u,v,degree = TRUE) }#returns angle in degrees
}  