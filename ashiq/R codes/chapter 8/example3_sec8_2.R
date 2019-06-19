#Example 3, section 8.2, page 424
#Let A be a 2x2 matrix .solve if A is diagonalizable. 

A<-matrix(c(1,-2,1,4),c(2,2))
A
ev<-eigen(A)
ev
vect<- ev$vectors
for(num in vect)
{
  if(num!=0)
    print("Linearly independent, hence A is diagonalizable")
  
}

#we find A is diagonalizable ,therefore there exists a nonsingular matrix P; 

#from vectors ,we can form a matrix leting L1 =2 and L2 =3 :
P<-matrix(c(-vect[c(1,2),c(2)],-vect[c(1,2),c(1)]),nrow=2) 
P
invo<- solve(P)

B<- invo %*% A %*% P 
B

#from vectors ,we can form a matrix leting L1=3 and L2=2 :
P<-matrix(c(-vect[c(1,2),c(1)],-vect[c(1,2),c(2)]),nrow=2) 
P
invo<- solve(P)

B<- invo %*% A %*% P 
B

