#Example 12, section 2.2, page 131
#Consider the digraph in Fig 2.12, whose adjacency matrix is A(G):

library(igraph)

simple.graph<- graph_from_literal(P1-+P4,P2-+P3,P1++P3,P3++P5,P4-+P5,P4-+P3,P2++P5,P3-+P1)
plot.igraph(simple.graph)
get.adjacency(simple.graph)
k<-largest.cliques(simple.graph)

