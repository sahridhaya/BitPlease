#EX-1-11 A class consisting of 4 graduate and 12 undergraduate students 
#is randomly divided into 4 groups of 4. 
#What is the probability that each group includes a graduate student? 
# Let us denote the four graduate students by 1, 2, 3, 4, and consider the events
#A1 = {students 1 and 2 are in different groups} 
#A2 = {students 1, 2, and 3 are in different groups} 
#A3 = {students 1, 2, 3, and 4 are in different groups}.
#initialize variables
decreaseInGroups<- 4
studentDecrease <- 1
#P(A1)=12/15
#since there are 12 student slots in groups other than the one of student 1, 
#and there are 15 student slots overall, excluding student 1.
studentSlotInGroups <-12
studentSlot <- 15
#P(A2|A1)=8/14
#since there are 8 student slots in groups other than the one of students 1 and 2, 
#and there are 14 student slots, excluding students 1 and 2. 
#P(A3|A1 ???A2)=4/13
#since there are 4 student slots in groups other than the one of students 1, 2, and 3, 
#and there are 13 student slots, excluding students 1, 2, and 3. 
#initialize the array of probability
alpha<-numeric(3)
#loop to calculate probability
#function to calculate probability
probability <- function(students,studSlot)
{prob <- (students/studSlot)
return (prob)
}
for(i in 1:3){
probs <- probability(studentSlotInGroups,studentSlot)
print(probs)
alpha[i]<- probs
print(alpha)
studentSlotInGroups<- studentSlotInGroups - decreaseInGroups
print (studentSlotInGroups)
studentSlot <- studentSlot - studentDecrease
print(studentSlot)
}

#calculating probability of having gaduate student in each group
# the desired probability is (12/15)*(8/14)*(4/13) 
totalProbability <- alpha[1]*alpha[2]*alpha[3]
print (totalProbability)
