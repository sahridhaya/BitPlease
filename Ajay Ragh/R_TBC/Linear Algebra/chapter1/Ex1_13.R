#Example 1.13,page 7
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,2,2,3,1,2),ncol = 2)
b <- c(1,-3,0)
Ab <- cbind(A,b)
Ab <- rowadd(Ab,1,2,-2)
Ab <- rowadd(Ab,1,3,-2)
Ab <- rowadd(Ab,2,3,-(4/5))
Ab
#the echelon form shows that the system is inconsistent,hence the solution set is empty