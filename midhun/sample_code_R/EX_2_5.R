#EX_2_5
#What is the mean and variance of the roll of a fair six-sided die? 
# If we view the result of the roll as a random variable X, its PMF is
#pX(k)=(1/6 if k =1 ,2,3,4,5,6, 0 otherwise.)
x<-numeric(6)#initialize the array of size 6 to store the events
px<-numeric(6)#initialize the array  to store the probaility of events
ex<-numeric(6)#initialize the array to store the product of probabilty and the events 
ex1<-numeric(6)# initialize the array to store the product between the probaility and the events
x<-c(1:6)#the events
px<-1/6#the probabilty of events
for(i in 1:6)#loop to calcualte the product between the probabilty and the events and between the square of events 
{
 ex[i]<-prod(x[i],px) 
 ex1[i]<-prod(x[i]^2,px)
}
EX<-sum(ex)#calcualted the sum of  E(X)
EX1<-sum(ex1)#calcualted the sum of E(X^2) 
EX
EX1
variance<-EX1-EX^2#calcualted the variance by the equation var(X)=E[X^2]???(E[X])^2
variance# print the calcualted variance
