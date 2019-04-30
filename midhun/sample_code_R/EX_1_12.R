#EX_1_12
# Youenter a chess tournament 
#where your probability of winning a game 
#is 0.3 against half the players (call them type 1), 
#0.4 against a quarter of the players (call them type 2),  
#0.5 against the remaining quarter of the players (call them type 3). 
#You play a game against a randomly chosen opponent. 
#What is the probability of winning? 
#Ai be the event of playing with i opponent
#B be the event of winning
win <- matrix(c(0.3, 0.4, 0.5),nrow=3,byrow=TRUE, dimnames=list(c("p(B|A1)","P(B|A2)","P(B|A3)"),c("probability"))) #the probability of winning given playing with i'th  opponent
win
playing <- matrix(c(0.5, 0.25, 0.25),nrow=3,byrow=TRUE,dimnames=list(c("p(A1)","P(A2)","P(A3)"),c("probability"))) #the probability of playing with i'th opponent
playing
mat<-numeric(3)
#by the total probability theorem 
#p(B)=P(A1)P(B|A1)+P(A2)P(B|A2)+P(A3)P(B|A3)
for(i in 1:3){mat[i]<-playing[i]*win[i]} #to do the total multiplication theorem 
mat
totalprobability<-sum(mat) #total probability of winning,P(B)
totalprobability
Region_of_B<-c(mat[1],mat[2],mat[3])
plot(Region_of_B,type="p",col="black")
                                                                  

