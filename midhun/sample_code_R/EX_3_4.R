#EX_3_4
#Suppose now that [a,b] = [0 ,1], 
#and consider the function g(x) = 1 ifx ??? 1/3, and g(x) = 2 ifx>1/3. 
#The random variable Y = g(X)is a discrete one with PMF pY (1) = P(X ??? 1/3)=1 /3, pY (2) = 1???pY (1)=2 /3. 
x<-readline(prompt="x: ") #enter the x input in the console while execute
#to print the random variable gx
if(x1<=0.3333){
  gx<-1
  print("gx:")
  print(gx)
}else if(x1>0.333){
  gx<-2
  print("gx:")
  print(gx)
}
Ex<-sum(prod(1/3,1),prod(2/3,2))# the expected value
Ex
