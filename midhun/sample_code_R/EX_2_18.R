#EX_2_18 
# it is a theoretical question so give value for variables 
# Mean and Variance of the Sample Mean. 
#We wish to estimate the approval rating of a president, to be called C. 
#To this end, we ask n persons drawn at random from the voter population,
n<-100000
binomial<-numeric(2)
#and we let Xi be a random variable that encodes the response of the ith person: 
Xi<-c(1,0)#1 if i th person approves C's performnce
#0 if th e ith person dissapproves C's performance
binomial<-rbinom(Xi,n,0.5)#creating a random variable  of the approval of c's performance
binomial#printing the random variable
p<-1/2#the common mean of appproval
q<-1-p#the common mean of dissapproval
sn<-binomial[1]/n#sn is the mean from the sample random variable
sn
Esn<-p#printing the expectation of the mean of sample space is the common mean
varsn<-prod(p,q)/n
varsn#variance of the mean