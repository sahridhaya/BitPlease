#Example 1.9,chapter1 linear systems page 6
#Example showing gauss method to reduce given system of linear equations
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installing and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,2,3,1,4,6,1,-3,-5),ncol = 3)
b <-c(9,1,0)
Ab <- cbind(A,b)
Ab <-rowadd(Ab,1,2,-2)
Ab <-rowadd(Ab,1,3,-3)
Ab <-rowadd(Ab,2,3,-(3/2))
Ab
#from Ab row3: z=3
#from Ab row2: y=-1
#from Ab row1: x=7