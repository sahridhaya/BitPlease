#Example 8,section 4.1, page 220
#Compute the area of the triangle T shown in fig 4.12 with vertices(-1,4),(3,1) and (2,6)

tri_angle<- matrix(c(-1,3,2,4,1,6),c(3,2))
print(tri_angle)
trigano<- cbind(tri_angle, 1) #inserting a column of 1 to obtain square matrix
print(trigano)

area.TR = function(a)
{
  sol=0
  sol<- det(a) / 2
  return(sol)
  
}

area.TR(trigano)

