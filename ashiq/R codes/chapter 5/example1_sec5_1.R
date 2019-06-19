# Example 1, section 5.1, page 259
#Let u= 2i + j+ 2k and v=3i -j -3k .Find the cross product UxV :


vector.cross <- function(a, b) 
  {
    if(length(a)!=3 || length(b)!=3){
      stop("Cross product is only defined for 3D vectors.");
    }
    i1 <- c(2,3,1)
    i2 <- c(3,1,2)
    sol<-(a[i1]*b[i2] - a[i2]*b[i1])
    return(sol)
  }

u<-c(2,1,2) #vector u
v<-c(3,-1,-3) #vector v

#cross product of vectors u and v is:
vector.cross(u,v)

