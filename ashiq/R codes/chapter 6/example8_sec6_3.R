#Example 8,section 6.3,page 295
#Are the vectors
 
v1<- c(1,0,1,2)
v2<- c(0,1,1,2)
v3<- c(1,1,1,3)
#This equation is of the form (At)A= (At)b i.e c1v1 + c2v2 + c3v3 =0
A<-matrix(c(v1,v2,v3),nrow=4)
A
b<-matrix(c(0,0,0,0))
first<- t(A)%*%A
second<- t(A)%*%b
x<-solve(first,second) #all elements are zero ,hemce the given vetors are linearly independent
x
count<-0
for(num in x)
{
  count=num+1
  if(count==1)
    print("Linearly independent")
  else
    print("Linearly dependent")
}  