#Chapter 2.
#Section II. Linear Independence
#Example 1.6,page 103
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
#c1(40 15) + c2(-50 25) = (0 0),check if {(40 15),(-50 25)} is linearly independent
A <- matrix(c(40,15,-50,25),ncol = 2)
b <- c(0,0)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,2,-15/40)
Ab
#from Ab,Both c1 and c2 are zero. So the only linear relationship between the two given row vectors is the trivial relationship.