#EX_6_14
p<-c(0.8,0.2,0.6,0.4)
mat<-matrix(p,nrow=2,ncol=2,byrow=T)#probabilty matrix
mat
t<-c(0,0.6,1,0.2)
T<-matrix(t,nrow=2,ncol=2,byrow=T)#matrix to represent the t matrix
T
b<-matrix(c(1,1),nrow=2,ncol=1,byrow=T)
b
t1<-solve(T,b)#calculate the first passage time to state 1 from state2
b1<-matrix(c(0,1),nrow=2,ncol=1,byrow=T)
t2<-solve(T,b1)#calculate the mean recurrence time 
t1[1,1]#mean first passage time to state1 starting from sate2
t2[1,1]#mean recurrence time to state 1
