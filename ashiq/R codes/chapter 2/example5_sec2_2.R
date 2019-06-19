#Example5, section 2.2 ,page 127
#Suppose that six individuals have been meeting in group terapy fr a long time and their leader,who is not part of th group ,has drawn the digraph G in Fig2.7,to describe the influence relations among the various indivduals. The adjacency matrix of G is:
library(igraph ,quietly=TRUE)

simple.graph<- graph_from_literal(P1-+P5 ,P3-+P1 ,P2-+P5, P2-+P5, P6-+P2,P6-+P4,P4-+P5,P3-+P5)

plot.igraph(simple.graph)
get.adjacency(simple.graph) #gives the matrix of corresponding graph 
