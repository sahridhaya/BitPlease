#EX_2_9
# Mean of the Binomial
# Your probability class has 300 students 
# and each student has probability 1/3 of getting an A,
# independently of any other student.
#What is the mean of X, the number of students that get an A? 
#X={1 if i th  student get an A}
x<-300#each 300 student get 1 PMF
p<-1/3#probaility of each getting A
e<-prod(x,p)#the mean E[X]=Sum((i=1to 300)*1/3)
e#printing the mean