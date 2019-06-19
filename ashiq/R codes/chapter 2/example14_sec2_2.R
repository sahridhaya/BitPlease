#Example 14 ,section 2.2, page 144
#Consider the digraph in figure 2.14, and verify A(G)+[A(G)]^2 +[A(G)]^3 + [A(G)]^4 = E to show that digraph is strongly connected.


library(igraph)
simple.graph<- graph_from_literal(P1-+P2,P2-+P3,P3++P4, P2-+P4,P3-+P5,P5-+P4,P1++P4,P5-+P2)
plot.igraph(simple.graph)
A<-get.adjacency(simple.graph)
square=A%*%A
cube= square%*% A
fourth= cube%*% A
E<- A + square + cube + fourth
print(E) 

check = function(y,E)
{
  y<-0
  E<-matrix(1:25,nrow=5,ncol=5)
for(num in E)
  if(num>0)
   {
    count=count+1
      if(count==25)
     { y<-TRUE }
      else
      { next }
    }
  else
  {
    break
  }
  return(y)
  
}

check(E) #returns true if all entries of matrix E are non zero,hence verified that matrix is strongly connected . 


