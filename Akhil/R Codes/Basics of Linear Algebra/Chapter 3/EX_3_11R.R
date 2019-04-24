# Example 11   Chapter: 3    PAge no.: 35
# Echelon Form

A <- matrix(c(1,0,1,0,1,1,1,0,0,2,3,1,1,1,1,0,1,2,1,2) , nrow=4,ncol=5,byrow=TRUE)
echelon(A)

#The solution obtained via this is slightly different than the one given in the textbook.
#It is because the final result of Gaussian elemination is process/step dependend.