#EX_2_1
# Let Y = |X| 
#pX(x)= (1/9 if x is an integer in the range [???4,4], 0 otherwise.)
X<- seq(from=-4,to=4,by=1)
X[8]
p<-c(1/9,0)
Y<-abs(X)
temp<-readline(prompt="number: ")
temp<-as.integer(temp)
temp
for(i in 1:9){
  if(temp==X[i]){p<-1/9
  print(p)}
}
p

proba<-function(t){
  for(i in 1:9){
  if (t==X[i]&& t!=0)
    {
    return(p1<-2*p)
  
  print("b")
  }

    else if(t==X[i]&& t==0)
    {
      return(p1<-p)}
    
}}
p<-proba(temp)
p