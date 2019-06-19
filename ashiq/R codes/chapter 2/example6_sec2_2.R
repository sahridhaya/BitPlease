#Example 6, section 2.2 ,page 127
#Consider a commnication network whose digraph G is shown in Figure 2.8, The adjacency matrix of G is:

library(igraph, quietly=TRUE)
simple.graph<- graph_from_literal(P1-+P5 ,P2-+P6,P6-+P3,P4-+P2,P4-+P5,P4-+P6,P5-+P6,P2++P5, P6-+P1,P3-+P2,P3-+P5)
plot.igraph(simple.graph)
get.adjacency(simple.graph) #gives the matrix for corresponding graph
