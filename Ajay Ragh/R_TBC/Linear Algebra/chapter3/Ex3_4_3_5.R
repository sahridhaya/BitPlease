#Example3.5,section IV.3:Mechanics of Matrix Multiplication,chapter3,page 238
A <- matrix(c(1,0,0,0,0,0,0,2,0),ncol = 3)
B <- matrix(c(1,4,7,2,5,8,3,6,9),ncol = 3)
A %*% B
#If a left-multiplier has entries in different rows then their actions don't interact
C <- matrix(c(1,0,0,0,0,0,2,0,0),ncol = 3)
C %*% B
#if the left-multiplier's nonzero entries are in the same row then that row of the result is a combination.