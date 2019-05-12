#EX_6_13
m<-4
i<-c(2,3)
mue<-c(0.6,-0.3,0.7,-0.4)#representing the multiplication vactors with mu
mat<-matrix(mue,nrow=2,ncol=2,byrow=T)#representing to matrix
mat
b<-matrix(c(1,1),nrow=2,ncol=1,byrow=T)#the solution matrix
b
m<-solve(mat,b)#this solve the both  matrix to give the value of mu
mu<-matrix(m,nrow=2,ncol=1,byrow=T)#representing tthe valur of mu in a matrix
row.names(mu)<-c("mu1","mu2")
mu#represent the values of mu1, mu2 in the matrix "mu"
#let m=5
transition<-c(1,0,0,0.3,0.4,0.3,0,0.3,0.4)
transition_mat<-matrix(transition,nrow=3,ncol=3,byrow=T)
plotmat(transition_mat)#markov chain representation of the transition matrix