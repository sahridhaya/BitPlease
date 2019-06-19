#Example 1, section 2.5, page 150
#Suppose that the weather in a certain city is either rainy or dry. As a aresult extesive record keeping it has been determined that the probability of a rainy day following a dry day is 1/3, and the probability of a rainy day following a rainy day is 1/2. Let state D be dry day and state R be a rainy day. Then the transition matrix of this Markov chain is:

T<- matrix(c(1/2,1/2, 2/3,1/3),c(2,2),dimnames=list(c("D","R"),c("R","D")) )
print(T) 