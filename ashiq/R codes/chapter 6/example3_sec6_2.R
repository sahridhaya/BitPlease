#Example 3, section 6.2, page 280
#Consider the set W cosisiting of all 2x3 matrices of the form= matrix(c('a','b',0,0, 'c', 'd'),byrow=T) where a,b,c, and d are arbitrary real numbers. Then W is a subset of the vector space M23 defined in Example 4 of section 6.1. Show that W is a subspace of M23. Note that a 2x3 matrix is in Wprovide its(1,3) and (2,1) enries are zero.:

#assume the values of variable to be '1' ; 
a1=1
b1=1
c1=1
d1=1
u<-matrix(c(a1,b1,0,0,c1,d1),nrow=2,byrow = T)
u

#assume the values of variable to be '2';
a2=2
b2=2
c2=2
d2=2
v<-matrix(c(a2,b2,0,0,c2,d2),nrow=2,byrow=T)
v

#finding U+V
third_term= matrix(c(a1+a2, b1+b2, 0, 0, c1+c2, d1+d2),nrow = 2,byrow=T)
third_term #u+v is in W

#assume value of k as '5' ;
k=5
mul<- u*k
mul  # hence kU is in W
