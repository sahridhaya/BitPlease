#EX_5_7
lamda<-0.2# initializing the variables lamda
#function to calculate the probability usung the poisson PMF
PMF<-function(lamda,T,k)
{
  return(prod((lamda*T)^k,(exp(1)^-(lamda*T)))/factorial(k))
}
PMF(0.2,1,0)#PMF of different lamda,Time,and k value is being calculated
PMF(0.2,1,1)
PMF(0.2,24,0)
PMF24<-(PMF(0.2,1,0))^24
PMF24