#Example 6, section 5.1, page 263
#Consider the parellepiped with a vertex at the origin and edges u=i-2j+3k, v=i+3j+k, and w=2i+j+2k. Then, calculate volume of parallelpiped :

u<-c(1,-2,3)
v<-c(1,3,1)
w<-c(2,1,2)
mat<-matrix(c(u,v,w),nrow=3,byrow = T)
mat

CrossProduct= function(x, y, i=1:3) 
{
  # Project inputs into 3D, since the cross product only makes sense in 3D.
  To3D <- function(x) head(c(x, rep(0, 3)), 3)
  x <- To3D(x)
  y <- To3D(y)
  
  Index3D <- function(i) (i - 1) %% 3 + 1
  
  return (x[Index3D(i + 1)] * y[Index3D(i + 2)] -
            x[Index3D(i + 2)] * y[Index3D(i + 1)])
}

vw.cross<-CrossProduct(v,w)

DOT= function(u,v)
{
  sis<- u[1]*v[1] + u[2]*v[2] + u[3]*v[3] 
  return(sis)
  
}
uv_dot<-DOT(u,vw.cross)

vol1<- abs(uv_dot)
vol1 #volume of parellelepiped using equation V=|u.(vxw)|

#Also by using determinant of given vectors, we can find volume;
vol2<- abs(det(mat))
print("volume of parellepiped is :")
vol2 