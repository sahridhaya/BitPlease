#EX_3_8
#Using the Normal Table
# The annual snowfall at a particular geographic location is modeled as a normal random variable 
#with a mean of µ = 60 inches, and a standard deviation of ?? = 20. 
#What is the probability that this year's snowfall will be at least 80 inches?
#A normal random variable Y with zero mean and unit variance is said to be a standard normal. 
# Its CDF is denoted by ??,
e<-2.817
pi<-3.14
f<-function(t){(1/sqrt(2*pi))*e^(-(t^2)/2)}
f_0.5<-integrate(f,-Inf,0.5)
f_0.5$val
f_negative_0.5<-1-f_0.5$val
f_negative_0.5
sd<-20
mean<-60
y<-(80-mean)/20
y
f_1<-integrate(f,-Inf,1)
f_1$val
p_x_greater_80<-1-f_1$val
p_x_greater_80