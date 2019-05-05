#EX_2_14
#Messages transmitted by a computer in Boston through a data network are destined for New York with probability 0.5, 
#for Chicago with probability 0.3, 
#and for San Francisco with probability 0.2. 
#The transit time X of a message is random. 
#Its mean is 0.05 secs if it is destined for New York,
#0.1 secs if it is destined for Chicago, and 0.3 secs if it is destined for San Francisco. 
#Then, E[X]iseasily calculated using the total expectation theorem as
p<-numeric(3)
t<-numeric(3)
ex<-numeric(3)
p<-c(0.5,0.3,0.2)
t<-c(0.05,0.1,0.3)
for(i in 1:3)
{
  ex[i]<-prod(p[i],t[i])
}
sum(ex)