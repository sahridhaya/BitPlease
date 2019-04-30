#EX_1_30
#install package "prob"

#A class consisting of 4 graduate and 12 undergraduate students is randomly divided into four groups of 4. 
#What is the probability that each group includes a graduate student?
total_sample_space<- prod(factorial(16))/(factorial(4)*factorial(4)*factorial(4)*factorial(4))
graduate<-letters[1:4]#creating sample spaceof 4 graduate
permsn(graduate,4)# sample space combination of 4 graduate in 4 groups
f1<-ncol(permsn(graduate,4))# number of combination of 4 graduate in 4 groups
#Take the remaining 12 undergraduate students and distribute them to the four groups (3 students in each). 
c<-prod(factorial(12))/(factorial(3)*factorial(3)*factorial(3)*factorial(3))
c
f2<-f1*c#total possibility of dividing the  4 graduate and 12 undergraduate students is randomly divided into four groups of 4. 
f2
p<-f2/total_sample_space
p#total probability of the sample space
