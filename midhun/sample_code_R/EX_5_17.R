#EX_5_17
# Random incidence in a non-Poisson arrival process
#the interarrival time that bus arrives inn between 15 and 45 minutes
T1<-15
T2<-45
#person arrives at interarrival time of 15 minute with probabilty 1/4
p1<-1/4
#person arrives at interarrival time of 45 is of probability 3/4
p2<-3/4
#the expected value of chosen interarrival time is
T<-sum((T1*p1),(T2*p2))
T