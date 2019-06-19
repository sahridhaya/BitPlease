#Example 23,section 1.3(optional), page 32 
#Find the summation of given elements of an array
A<- array(c(3,4,5,8))
sum<-0
for(num in A)
{
  sum= sum+num
}
print(sum)