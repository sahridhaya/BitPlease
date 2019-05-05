#EX_2_7

x1<-numeric(3)
x2<-numeric(3)
p1<-numeric(3)
p2<-numeric(3)
ex1<-numeric(3)
ex2<-numeric(3)
x1<-c(0,100,300)
x2<-c(0,200,300)
p1<-c(0.2,0.8*0.5,0.5*0.8)
p2<-c(0.5,0.5*0.2,0.5*0.8)
for(i in 1:3)
{
  ex1[i]<-prod(x1[i],p1[i])
  ex2[i]<-prod(x2[i],p2[i])
}
sum(ex1)
sum(ex2)