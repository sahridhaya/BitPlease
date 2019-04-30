# EX 1_2.R TOSSING A COIN 
#specified number of times random samples have to taken 
number_flips <- 100
# created coin object with head and tail
coin <- c("heads","tails")
#simulating the flip of the object coin
flips <- sample(coin, size=number_flips, replace= TRUE)
#counting the number of heads and tails in the flips
freq <- table(flips)
#typing the frequency of heads and tails
freq
#probability of getting head if we specify that head and tail is equally likely
dbinom(1, size=1, prob=0.5)
#total probability of head and tail
dbinom(1, size=1, prob=0.5)+
dbinom(1, size=1, prob=0.5)

