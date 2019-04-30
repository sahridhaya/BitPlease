#EX 1_18.R
#If the sample space consists of n possible outcomes 
#which are equally likely 
#(i.e., all single-element events have the same probability), 
#then the probability of any event A is given by
#P(A)=Number of elements of A/ n
#probaility of occuring 2 heads with 3 simultaneous coin flipping 
dbinom(2, size=3, prob=0.5)
# total probability of occuring different events(3 heads , 2 heads, 1,heads, 0 heads) in flipping 3 coins simultaneously
probability <- dbinom(3, size=3, prob=0.5)+
dbinom(2, size=3, prob=0.5)+
dbinom(1, size=3, prob=0.5)+
dbinom(0, size=3, prob=0.5)
#dbinom() This function gives the probability density distribution at each point.
print (probability)
