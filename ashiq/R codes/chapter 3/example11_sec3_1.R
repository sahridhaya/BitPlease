#Example 11, section 3.1,page 187
#Show that if two rows of a matrix are identical ,then the determinant of that matrix is zero:

A<-matrix(c(1,-1,1,2,0,2,3,7,3) , nrow=3, ncol=3)

check = function(a,b,d)
{
  a<- A[c(1),c(1,2,3)]
  b<- A[c(2),c(1,2,3)]
  d<- A[c(3),c(1,2,3)]
         
      x=identical(a,d)
      y=identical(a,b)
      z=identical(b,d)
      
      if(x==TRUE)
      {
        ziz<-det(A)
        ziz=0
        return(ziz)
      }
      if(y==TRUE)
      {
        ziz<-det(A)
        ziz=0
        return(ziz)
      }
      if(z==TRUE)
      {
        ziz<-det(A)
        ziz=0
        return(ziz)
      }
      else
       return(det(A))
}
check(A) 