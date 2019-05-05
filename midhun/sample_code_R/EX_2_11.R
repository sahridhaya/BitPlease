mat<-matrix(c(16/48,12/48,9/48,0,4/48,6/48,0,0,1/48), nrow=3,ncol=3,byrow=T,dimnames= list(c(x=0:2),c(y=0:2)))
mat
x[2]           
mat[1,1]
#P(at least one wrong answer) = pX,Y (1,1) + pX,Y (2,1) + pX,Y (2,2)
sum<-0
for(i in 2:3)
{
  for(j in 2:3)
  {
    sum<-sum+mat[i,j]
  }
}
sum              
              