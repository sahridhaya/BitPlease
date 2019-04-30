#EX_2_2
#Consider two independent coin tosses, each with a 3/4 probability of a head, and let X be the number of heads obtained.
fx<-numeric(3)#initializing the probability mass function
x<-numeric(3)#initializing the x value
M<-numeric(3)#initializing the array to have the loop value to calculate mean
V<- numeric(3)#initializing the array to have the loop value of standard deviation
fx <-c(((1/4)^2),(2*1/4*3/4),(3/4)^2)#initializing the array of PMF
x<- c(0,1,2)#initializing the x variable
coin<- c("H","T")# initializing object coin
iidspace(coin,ntrials=2,probs=(c(0.75,0.25)))#sample space of tossing 2 coin with probability .75 of getting head
#for loop to calculate the product of PMF and x
for(i in 1:3)
{
  M[i]<-prod(fx[i],x[i])
}
mean<-sum(M)#calculated the mean
mean# print the mean
#loop to calculate the variance
for(i in 1:3)
{
  V[i]<-(x[i]-mean)^2
}
variance<-V#calcualted the variance
variance# print the variance
standard_deviation<-sqrt(variance)#standard deviation is the square root of variance
standard_deviation# print the standard deviation