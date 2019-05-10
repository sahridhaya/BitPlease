#Example3.1,chapter4,section1,page 329
X <- matrix(c(4,-2,2,6),ncol = 2)
#scalars come out of each row separately,not from the entire matrix at once.
#so X will become
A <- matrix(c(2,-1,1,3),ncol = 2)
#with scalars 2 & 2 coming out of rows 1 and 2 respectively
c <- det(X)
d <- 4*det(A)
all.equal(c,d)
