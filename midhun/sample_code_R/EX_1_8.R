#EX_1_8
#A conservative design team, call it C,
#and an innovative design team, call it N,
#are asked to separately design a new product within a month. 
#we know that:
#The probability that team C is successful is 2/3.
# The probability that team N is successful is 1/2.
# The probability that at least one team is successful is 3/4.
#If both teams are successful,the design of team N is adopted. 
#Assuming that exactly one successful design is produced, 
#what is the probability that it was designed by team N? 

#SS-both tteam got succes
#SF- C got success and N got failed
#FS- N got succed and C got failed
#FF- both got failed

#probability of team c is success
#p(SS)+P(SF)=2/3
p1<- 2/3
#probabilty of team n succes
#p(SS)+P(FS)=1/2
p2<- 1/2
#probabilty atleast one got selected =p(SS)+p(SF)+p(FS)
p3<-3/4
#Difference of p3 and p1= p(FS)
FS<-sum(p3,-p1)
FS
SF<-sum(p3,-p2)
SF
p4<-sum(p1,p2)
SS<-sum(p4,-p3)
SS
#the probability that it was designed by team N
#conditional probabilty
#P({FS}|{SF,FS})
PN<- FS/sum(FS,SF)
PN#prints the probability that it is designed by N
