EX_1_29

TATTOO <- list("T","A","T","T","O","O")
L<-length(TATTOO)
M<-0
N<-0
R<-0
for(i in 1:L)
{
  if(as.character(TATTOO[i])=="T")
  {
    M<-(M+1)
  }

  else if(as.character(TATTOO[i])=="A")
  {
    N<- (N+1)
  }
  else if(as.character(TATTOO[i])=="O")
  {
    R<- (R+1)
  }
}
repetition<- matrix(c(M,N,R),nrow=3,byrow=T,dimnames = list(c("T","A","O"),c("repetition")))
repetition
Per<- function(p,q,s,t)
{
  X<-prod(factorial(p))/(factorial(p-q)*factorial(p-s)*factorial(p-t))
  return(X)
                       
}
Per(L,M,N,R)

