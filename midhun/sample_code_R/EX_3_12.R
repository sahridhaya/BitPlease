#EX_3_12
A1<-numeric(5)#
A2<-numeric(15)
A1<-sample(c(1:5),replace = FALSE)
A1
A2<-sample(c(1:15),replace = FALSE)
pA1<-1/4
fyA1<-1/length(A1)
fyA2<-1/length(A2)
y<-readline(prompt="y: ")
if(0<=y&&y<=5){
  return(sum(prod(pA1,fyA1),prod((1-pA1),fyA2)))
}else if(5<y||y<=15){
  return(prod((1-pA1),fyA2))
}