#EX_4_1
#Transform
x<-c(2,3,5)#creating the uniform random variable of x
px<-c(1/2,1/6,1/3)#creating the pdf function of x
Ms<-sum(1/2*exp(1)^2,1/6*exp(1)^3,1/3*exp(1)^5)#calculating the transform
Ms
par(mfrow=c(2,2))#creating the space for the plots to be plotted
curve((1/2*exp(1)^(2*x)),-10,10,col="red")#curve of the Ms function of x=2 
curve(1/3*exp(1)^(3*x),-10,10,col="violet")#curve of the Ms function of x=3
curve(1/5*exp(1)^(3*x),-10,10,col="black")#curve of the Ms function of x=5
plot(x,px,type="h",col="red")#plot the x vs px graph