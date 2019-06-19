#Example 1, section 2.4, page 146
#Fig 2.21 shows thecircuit from Fig 2.20 with the batteries having the indicated electrical potentials,measured from the negative terminal to the positive one,and the resistors having the indicated resistances.the problem is to determine the currents that flow through each segment of the circuit.

library(igraph,quietly = TRUE)
simple.graph<- graph_from_literal(a-b,b-c,c-d,d-e,e-f,f-a,c-f)
plot.igraph(simple.graph, mark.shape = -0.6)

I1=I1 #current to the segment f-a-b-c
I2=I2 #current to the segment f-c
I3=I3 #current to the segment c-d-e-f 
I3 <- I1+ I2 #by kirchoffs current law

E1<-40 #value of potential beteen points a and b
E2<-120 #value of potential between points c and f
E3<-80 #value of potential between points d and e
R1<-5 #value of resistance between points b and c
R2<-10 #value of resistance between points c and f
R3<-10 #avlue of resistance between points c and d
R4<-30 #value of resisitance between points c and d

#Applying kirchoffs voltage law around the close loop a-b-c-f-a
first= I1- (2*I2) -16
#Applying kirchoffs voltage law around the close loop c-d-e-f-c
second= I2+ 5*I3 - 20
#Applying kirchoffs voltage law around the close loop a-b-c-d-e-f-a
third= I1 + 10*I3 -24 

#converting above three linear equations to matrix form
coeff<-matrix(c(1,1,0,1,-2,1,-1,0,5),c(3,3))
const<-matrix(c(0,-16,20),c(3,1))
solution<-solve(coeff,const)
print(solution)
print("value of I1 is:")
solution[c(1)]
print("value of I2 is:")
solution[c(2)]
print("value of I3 is:")
solution[c(3)]




