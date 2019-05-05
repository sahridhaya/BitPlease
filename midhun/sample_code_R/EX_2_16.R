#EX_2_16
#install.packages("prob") uncomment this to install prob package
# Consider two independent tosses of a fair coin.
toss<-matrix(nrow=4,ncol=4)
p<-numeric(4)
mat<-matrix(nrow=3,ncol=3)
coin<-c("H","T")
toss<-expand.grid(coin,coin)
table(toss)
nrow(toss)
ncol(toss)
probspace(toss)
mat<-noorder(probspace(toss))

mat[3]
#Let X be the number of heads and 
#The (unconditional) PMF of X is
px<-matrix(c(0,1,2,1/4,1/2,1/4),nrow=2,ncol=3,byrow=T)
px
#let A be the event that the number of heads is even.
pA<-1/2
# The conditional PMF is obtained from the de???nition pX|A(x)= P(X=x and A)/P(A): 
#px|A<-p(X&A)/p(A)
pAX <- c(1/2,0,1/2)
plot(pAX,type="b")
