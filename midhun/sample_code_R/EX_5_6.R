#EX_5_6
p<-0.0001#initializing the variables p,n,n1
n<-(log(0.999,base=exp(1)))/(log(0.9999,base=exp(1)))
n1<-(-log(0.999,base=exp(1)))/p
Ps<-1-(1-p)^n#calcualating the probability of free variable S
Ps
poisS<-1-exp(1)^-(p*n1)#calcuating the probability of free variable using the poisson approximation
poisS