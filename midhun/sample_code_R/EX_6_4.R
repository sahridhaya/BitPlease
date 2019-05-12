#EX_6_4
p<-c(0.8,0.6,0.2,0.4)
prob<-matrix(p,nrow=2,ncol=2,byrow=T)#matrix of  multiples of pi
prob
pi<-c(0.75,0.25)
mat<-matrix(pi,nrow=2,ncol=1,byrow=T)#created matrix of pi giving value of pi
mat
solve(prob,mat)#generate the solution of the pi
