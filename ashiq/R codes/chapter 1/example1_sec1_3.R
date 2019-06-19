#Example 1, section 1.3, page 22
#Find the Dot product of U and V :

DOT =function(U,V)  #function to find dot product
{
      w<-0
      product_matrix <- U*V
      for(num in product_matrix)
      {
        w<-w+num
      }
      return (w)
}

U<- c(1,-2,3,4)
V<- c(2,3,-2,1)
DOT(U,V)

