#Example1.1,section IV:Matrix Operations,chapter3,page 224
#Let f : V -> W be a linear function represented with respect to some bases by this matrix.
f <- matrix(c(1,1,0,1),ncol = 2)
#find the map that is the scalar multiple 5f: V -> W.
5*f
#Changing from the map f to the map 5f has the effect on the representation of the output vector of multiplying each entry by 5.
#Therefore, going from the matrix representing f to the one representing 5f means multiplying all the matrix entries by 5.