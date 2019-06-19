#Example 15,section 4.1, page 225
#Check whether u=(2,-4) and v=(4,2) are orthogonal .

u<-c(2,-4)
v<-c(4,2)

DOT= function(u,v)
{
  sis<- u[1]*v[1] + u[2]*v[2]
  return(sis)
  
}
sol<- DOT(u,v)
print(sol)

if(sol==0)
  print("vectors are orthogonal")