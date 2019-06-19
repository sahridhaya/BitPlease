#Example 7, section 6.1, page 274
#Find the degree of the following polynomials :

library(polynom)
P1<-polynomial(coef = c(-1,5,-2,0,3))
P1
P2<-polynomial(coef=c(1,2))
P2
P3<-polynomial(coef=c(4))
P3
coeff.p1<-coef(P1)
coeff.p2<-coef(P2)
coeff.p3<-coef(P3)


degree=function(coeff.p1)
                {count=0
                 
                  for(num in coeff.p1)
                  {
                  
                    count=count+1
                    
                  }
                 c<- count-1
                 return(c)
                }
degree(coeff.p1)
degree(coeff.p2)
degree(coeff.p3)


