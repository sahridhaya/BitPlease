#Example 3,section 2.5, page 151
#Suppose that the weather in a certain city is either rainy or dry. As a aresult extesive record keeping it has been determined that the probability of a rainy day following a dry day is 1/3, and the probability of a rainy day following a rainy day is 1/2. Let state D be dry day and state R be a rainy day. Suppose that when we begin our observations(day 0),it is dry,so the initial state vector is:
x0<-matrix(c(1,0)) #find the state vector on day 1(the day after we begin our observation) :
print(x0)

T<- matrix(c(2/3,1/3,1/2,1/2),c(2,2),dimnames=list(c("D","R"),c("D","R")) )
print(T) 
x1<- T %*% x0
round(x1,4)
x2<- T %*% x1
round(x2,4)
x3<- T %*% x2
round(x3,4)
x4<- T %*% x3
prob<-round(x4,3)
print(prob)
x5<- T %*% x4
prob11<-round(x5,3)
print(prob11)

identical(prob,prob11) 
#returns true if last two matrices are equal,hence we conclude that from fourth day on it is dry about 60% of the time,and it rains about 40% of the time




