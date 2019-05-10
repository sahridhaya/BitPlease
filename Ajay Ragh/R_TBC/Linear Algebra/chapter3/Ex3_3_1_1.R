#Example 1.1,section III,Computing linear maps,page 204
#For the spaces R^2 and R^3 fix these bases
# B=((2,0),(1,4)) , D = ((1,0,0),(0,-2,0),(1,0,1))
#map h: R^2 -> R^3,that is determined by this association: 
# h:(2,0) -> (1,1,1) & h: (1,4) -> (1,2,0)
#to complete the action of this map we need a vector,take it as h(B1),vector from bases B to D
b1 <- c(2,0)
b2 <- c(1,4)
d1 <- c(1,0,0)
d2 <- c(0,-2,0)
d3 <- c(1,0,1)
0*d1-(1/2)*d2+1*d3 #checking for vector h(B1),so from this;
h1 <- c(0,1/2,1)
#now checking for h2
1*d1-1*d2+0*d3
h2 <- c(1,-1,0)
#With these, for any member v of the domain we can compute h(v).