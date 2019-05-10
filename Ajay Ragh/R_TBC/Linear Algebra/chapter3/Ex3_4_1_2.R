#Example1.2,section IV:Matrix Operations,chapter3,page 225
f <- matrix(c(1,2,3,0),ncol = 2)
g <- matrix(c(-2,2,-1,4),ncol = 2)
#two linear maps with the same domain and codomain f; g: R^2 -> R^2 are represented with respect to bases B and D by these matrices.
#find effect of f + g on the map
f+g
#if f does v -> u and g does v -> w then f + g is the function whose action is v -> u + w.