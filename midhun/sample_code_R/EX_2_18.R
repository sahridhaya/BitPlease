#EX_2_18
# Mean and Variance of the Sample Mean. 
#We wish to estimate the approval rating of a president, to be called C. 
#To this end, we ask n persons drawn at random from the voter population,
n<-100000
mean<-numeric(2)
#and we let Xi be a random variable that encodes the response of the ith person: 
Xi<-c(1,0)#1 if i th person approves C's performnce
#0 if th e ith person dissapproves C's performance
binomial<-rbinom(Xi,n,0.5)
mean<-p/n
p<-mean[1]
q<-mean[2]
sn<-sum(binomial)/n
sn
