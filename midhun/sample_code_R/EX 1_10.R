#Example 1.10.
#Three cards are drawn from an ordinary 52-card deck without replacement (drawn cards are not placed back in the deck).
# ???nd the probability that none of the three cards is a heart.
#making a class of deck
#simulation of a deck of cards
deck <- c(rep("Diamonds",13), rep("Clubs",13), rep("Hearts",13), rep("Spades",13))
deck
#simulation of picking 3 cards from a deck of 52 cards
picks <- sample(deck, size=3, replace= FALSE)
picks
#counting number of elements in a pick
count<-table(picks)
#initializing a list "alpha" to store the probability of not getting a heart for each 3 picks
alpha<-numeric(3)
#function to calculate probability
eventProbability <- function(cardnumber,decknumber)
{
  notHeartprobability <- (cardnumber/decknumber)
  return (notHeartprobability)
}
#loop to store probability in list alpha
for (i in 1:3){
# number of cards in deck before picking a card
deckNumber <- 52
# number of cards other than heart before picking a card
notHeartNumber <- 39
#after picking cards without replacement 
cardsDrawn <- (i-1)
deckNumber <- deckNumber- cardsDrawn
print(deckNumber)
HeartDrawn <- (i-1)
notHeartNumber <- notHeartNumber - HeartDrawn
print(notHeartNumber)
#finding probability for each picking
heartprobability <- eventProbability (notHeartNumber,deckNumber)
#storing the probability to list
alpha [i]<- heartprobability
print(alpha)
print (heartprobability)
}

print(alpha)
#finding the total probabilty of not getting a heart when piking 3 cards from 52 cards
probabilityNotHeart <- (alpha[1]*alpha[2]*alpha[3])
print(probabilityNotHeart)
print(heartprobability)

