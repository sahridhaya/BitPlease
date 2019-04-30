#EX_1_9
# If an aircraft is present in a certain area, 
#a radar correctly registers its presence with probability 0.99. 
#If it is not present, the radar falsely registers an aircraft presence with probability 0.10.
#We assume that an aircraft is present with probability 0.05. 
#What is the probability of false alarm (a false indication of aircraft presence), 
#and the probability of missed detection (nothing registers, even though an aircraft is present)? 
Rate<-100000# specifying the number of trials
Aircraft<- sample(c("no","yes"),size=Rate,replace=TRUE,prob=c(0.95,0.05)) #created the sample space of presence of aircraft
Radar<- rep(NA,Rate)#creating the radar sample array
#creating the sample space in which radar detects the aircraft eventhough there is not an aircraft
Radar[Aircraft=="no"]<-sample(c("detects","notdetect"),size=sum(Aircraft=="no"),replace=TRUE,prob=c(0.10,0.90))
#Creating the sample space in which radar detects aircraft with the presence of aircraft
Radar[Aircraft=="yes"]<-sample(c("detects","notdetect"),size=sum(Aircraft=="yes"),replace=TRUE,prob=c(0.99,0.01))
p1<-mean(Radar[Aircraft=="yes"]=="detects")# probability radar detects aircraft given aircraft present
p2<-mean(Radar[Aircraft=="yes"]=="notdetect")#probability radar not detects given aircraft is present
p3<- mean(Radar[Aircraft=="no"]=="detects")# probability radar detects given aircraft is not present
p4<-mean(Radar[Aircraft=="no"]=="notdetect")# probabilityradar not detects given aircraft is not present
p5<-mean(Aircraft=="yes")#probability of presence of aircraft
p6<-mean(Aircraft=="no")#probability aircraft is not present
#A = {an aircraft is present}, B = {the radar registers an aircraft presence}
#A! = {an aircraft is not present}, B! = {the radar does not register an aircraft presence}. 
probability <- matrix(c(p1,p2,p3,p4,p5,p6), nrow=6, byrow=TRUE, dimnames =list(c("P(B|A)","P(B!|A)","P(B|A!)","P(B!|A!)","P(A)","P(A!)"),c("probability")))
probability
Con_prob<- function(a,b)#function to find the conditional probability
{a*b}
#P(false alarm) = P(A!B)=P(A!)P(B|A!)
p7<- Con_Prob(p6,p3)#P(A!B)
p7
#P(missed detection) = P(AB!)=P(A)P(B!|A)
p8<- Con_Prob(p5,p2)# P(AB!)
p8


