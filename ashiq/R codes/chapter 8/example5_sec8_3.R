#Example 5 ,section 8.3, page 439
#Diagonalize a symmetric matrix A by an orthogonal matrix P:

library(pracma)


A<-matrix(c(1,2,0,0,2,1,0,0,0,0,1,2,0,0,2,1),c(4,4))
A
cpol<-charpoly(A)
p<-polynomial(coef=c(cpol[c(4)],cpol[c(3)],cpol[c(2)],cpol[c(1)]))    #converts it into a polynomial
p
roots<-polyroot(p)

ev<-eigen(A)
ev
vect<- ev$vectors
x1<- vect[c(1,2,3,4),c(4)]
x2<- vect[c(1,2,3,4),c(3)]
x3<- vect[c(1,2,3,4),c(2)]
x4<- vect[c(1,2,3,4),c(1)]



magnitude = function(x)
{
  sum<-0
  s1<-0
  m<-0
  for(num in x)
  { s1<- num^2
  sum=sum+s1  
  }
  m<-sqrt(sum)
  return(m*1.414)
}

 
m1<-magnitude(x1)
m1
m2<-magnitude(x2)
m2
m3<-magnitude(x3)
m3
m4<-magnitude(x4)
m4

#Normalizing eigenvectors..
z1<- x1/m1
z1
z2<-x2/m2
z2
z3<-x3/m3
z3
z4<-x4/m4
z4

#obtain matrix P :
P<-matrix(c(z1,z2,z3,z4),nrow=4)
P #P is an orthogonal matrix 


