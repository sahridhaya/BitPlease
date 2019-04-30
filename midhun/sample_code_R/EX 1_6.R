#EX 1_6.R
#We toss a fair coin three successive times. 
#We wish to ???nd the conditional probability P(A|B) when A and B are the events 
#A = {more heads than tails come up},
#B = {1st toss is a head}.
#The sample space consists of eight sequences,
#??={HHH, HHT, HTH, HTT, THH, THT, TTH, TTT},
#The event B consists of the four elements HHH, HHT, HTH, HTT
coins<- c("H","T","H","T","H","T")
for(i in 1:8){
flips <- sample(coins, size=3, replace=FALSE)
print(flips)
}
dbinom(2, size=3, prob=0.5)
dbinom(3, size=3, prob=0.5)
#probability of getting more heads than tails
p<-dbinom(3, size=3, prob=0.5)+
dbinom(2, size=3, prob=0.5)
print(p)
#probability of first toss is a head
q<- 0.5
#probability of (A and B)
s<- 3/8
#conditional probabilty p(A|B)
r<- s/q
print(r)

  

