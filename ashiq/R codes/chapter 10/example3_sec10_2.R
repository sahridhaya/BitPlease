#Example 3, section 10.2, page 510
#Let L: R3 -> R4 be as defined in example6,sec1.5 i.e f(u)= f[x,y,z]=matrix(c(1,0,0,1,0,0),c(2,3))*[x,y,z]
#Find the kernel of vectors L1 and L2:

L1<-c(0,0,2)
L2<-c(2,-3,4)


kernL = function(x)
{
  count<-0
  for(num in x)
  {
    count<-count+1
    if(count!= (length(x)))
      print(num)
  
  }

}
kernL(L1)
kernL(L2) 