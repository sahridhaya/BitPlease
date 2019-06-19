#Example 7 ,section 4.1, page 219
#Find the distace between P(3,2) and Q(-1,5) or the length of the directed line segment PQ :
library(proxy)

P<- matrix(c(3,2),c(2,1))
Q<-matrix(c(-1,5),c(2,1))

x<- (Q[c(1)] - P[c(1)])^2
y<- (Q[c(2)] - P[c(2)])^2

sol<- sqrt(x+y) #returns square root of the sum
print(sol) 