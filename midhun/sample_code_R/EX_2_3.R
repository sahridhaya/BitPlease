#EX_2_3
# Consider the random variable X of Example 2.1, which has the PMF 
#PMF={1/9 , if x in (-4,4), 0 otherwise}
M<- numeric(9)
x<-numeric(9)
z<- numeric(9)
V<- numeric(5)
PMFz<-numeric(3)
PMF<-1/9
x<-c(-4:4)
for(i in 1:9)
{
  M[i]<-x[i]*PMF
}
mean<-sum(M)
mean
for(i in 1:9)
{
  z[i]<-(x[i]-mean)^2
}
Z<-z[5:9]
Z
PMFz<-c(2/9,1/9,0)
for(i in 2:5)
{
  V[i]<- Z[i]*PMFz[1]
}
V
variance<-sum(V)
variance

      