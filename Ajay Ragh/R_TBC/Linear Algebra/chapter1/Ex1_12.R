#Example 1.12 Section I. Solving Linear Systems page7
#package used matlib v0.9.1
#install package using command: install.packages("matlib")
#Github reposiory of matlib :https://github.com/friendly/matlib

#installing and loading library
#install.packages("matlib")
library("matlib")

#program 
A <- matrix(c(1,2,2,3,1,2),ncol = 2)
b <- c(1,-3,-2)
#for this problem we cannot use normal method because the number of equations is more than number of variables
#so we use gaussian elimination technique.
gaussianElimination(A, b, tol = sqrt(.Machine$double.eps), verbose = FALSE,
                    latex = FALSE, fractions = FALSE)
# result shows that one of the equations is redundant, here x=-2,y=1 