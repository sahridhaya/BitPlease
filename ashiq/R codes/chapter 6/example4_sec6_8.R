#Example 4, section 6.8, page 357
#Consider the basis S= {u1,u2,u3} fo R3, where
library(matlib)

u1<-c(1,1,1)
u2<-c(-1,0,-1)
u3<-c(-1,2,3)
v1=u1 #step1

#use Gram-Schmidt process to transform S to an orthogonal basis for R3.

DOT= function(u,v)
{
  sis<- u[1]*v[1] + u[2]*v[2] + u[3]*v[3] 
  return(sis)
  
}
#step2
upper<- DOT(u2,v1)
lower<- DOT(v1,v1)
lower2<-DOT(v2,v2)
v2<- u2 - (upper/lower)*v1
v2<-v2*3
v2
high<-DOT(u3,v1)
high2<-DOT(u3,v2)
v3<- u3 - (high/lower)*v1 - (high2/lower2)*v2
round(v3)
# T*={v1,v2,v3} is an orthogonal basisi for R3

#step3
magnitude =function(q)
{
  sum<-0
  s1<-0
  m<-0
  for(num in q)
  { s1<- num^2
  sum=sum+s1  
  next }
  m<-sqrt(sum)
  return(m)
}

m1<-magnitude(v1)
m1
m2<-magnitude(v2)
m2
m3<-magnitude(v3)
m3
#let
w1<- v1/m1
w1
w2<- v2/m2
w2
w3<- v3/m3
w3
#hence we conclude that T={w1,w2,w3} is an orthonormal basis