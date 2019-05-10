#Example 2.1,chapter1,section 1.2,page 13
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(2,1,3,0,-1,-1,1,-1,0),ncol=3)
b <- c(3,1,4)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,2,-0.5)
Ab <- rowadd(Ab,1,3,-1.5)
Ab <- rowadd(Ab,2,3,-1)
Ab
#from the result we can see that the system doesnot have a unique solution.
#We can represent the solution set by representing the variables that lead(x,y)by the variable that does not lead(z).
#so solution set {((3/2)-(1/2)z,(1/2)-(3/2)z,z)|z belongs to R}