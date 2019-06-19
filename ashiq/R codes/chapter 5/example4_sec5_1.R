#Example 4, section 5.1, page 262
#Find the area of the triangle with vertices P1(2,2,4), P2(-1,0,5), and P3(3,4,3) :

library(utils)
library(matlib)


P1<-matrix(c(2,2,4),byrow = T)
P2<-matrix(c(-1,0,5),byrow= T)
P3<-matrix(c(3,4,3),byrow=T)
vector.cross <- function(a, b) 
{
  
   cal<- b[c(1)]-a[c(1)]
   cal2<- b[c(2)]-a[c(2)]
   cal3<- b[c(3)]-a[c(3)]
   cout<- matrix(c(cal,cal2,cal3),byrow = T)#to concatenate string and constants values
   print(cout)
   dd<-matrix(c(cal),byrow=T)
   ff<-rbind(dd,cal2)
   gg<-rbind(ff,cal3)
   return(gg)
   
}
u= vector.cross(P1, P2)
v= vector.cross(P1, P3)

CrossProduct<- function(x, y, i=1:3) 
  {
  # Project inputs into 3D, since the cross product only makes sense in 3D.
  To3D <- function(x) head(c(x, rep(0, 3)), 3)
  x <- To3D(x)
  y <- To3D(y)
  
  Index3D <- function(i) (i - 1) %% 3 + 1
  
  return (x[Index3D(i + 1)] * y[Index3D(i + 2)] -
            x[Index3D(i + 2)] * y[Index3D(i + 1)])
}

new<-CrossProduct(u,v) #obtain the vector product of u and v
new 

Area.triangle= function(x)
{
  half<-0
  for(num in x)
  {
    half<-half+ (num/2)^2
    half
    
  }
  return(sqrt(half))
}  

print("The area of Triangle is :") 
Area.triangle(new)                  #At