#Example 6,section 4.1, page 219
#Give the magnitude of vector U ,if U=(2,-5)

 x1 <- matrix(c(2,-5), ncol = 1, byrow = T)
 sum<-0
 sq<-0
 
 for(num in x1)
 {
  sq<- num^2
  sum<- sq+sum
  next 
 }
 print(sum)
 sqrt(sum) 
 