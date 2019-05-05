#EX_2_8
# Average Speed Versus Average Time
#If the weather is good (which happens with probability 0.6), 
#Alice walks the 2 miles to class at a speed of V =5miles per hour, 
#and otherwise drives her motorcycle at a speed of V = 30 miles per hour. 
#What is the mean of the time T to get to class?
t<-numeric(2)#initialize the array to store the time 
p<-numeric(2)#initialize the array to store the probability
et<-numeric(2)#array to store the product
t<-c(2/5,2/30)#timre array
p<-c(0.6,0.4)#probability array
for(i in 1:2)#loop to calculate the product of probability and the time
{
  et[i]<-prod(t[i],p[i])
}
sum(et)#calcualted the mean