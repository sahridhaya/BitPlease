#EX_6_11
#install.packages("markovchain") uncomment this to install package
#install.packages("diagram") uncomment this to install
library(markovchain)#loading libraries
library(diagram)
par(mfrow=c(2,2))#to create matrix in the plot to accomodate the plot
x<-c(1,0,0,0,0,0.2,0.3,0.4,0.1,0,0,0.2,0,0.3,0.5,0,0,0,0.3,0.7,0,0,0,1,0)#transition elements of first transition
x2<-c(1,0,0,0,0.2,0.3,0.4,0.1,0,0.2,0,0.8,0,0,0,1)#elemennts in the second transition
p<-matrix(x,nrow=5,ncol=5,byrow=T)
p#to create the element matrix
transition<-c(1:5)#nsmes of the transition matrix
row.names(p)<-transition
colnames(p)<-transition
p
plotmat(p)#to plot the markov chain of transition matrix
new_transition<-matrix(x2,nrow=4,ncol=4,byrow=T)#new transition matrix
name<-c(1,2,3,6)
row.names(new_transition)<-name
colnames(new_transition)<-name
new_transition
plotmat(new_transition)#plotting the markov chain of the new transition matrix
#since it is a singular matrix can't solve in r
a2<-21/31
a3<-29/31