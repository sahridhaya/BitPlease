#Example 3 , Section 1.2 ,page 11
#Represent data of airline distances between cities in matrix format:
#LONDON,MADRID,NEWYORK,TOKYO

A<- matrix(c(0,785,3469,5959,785,0,3593,6706,3469,3593,0,6757,595,6706,6757,0),c(4,4), dimnames = list(c("LONDON","MADRID","NEWYORK","TOKYO"),c("LONDON","MADRID","NEWYORK","TOKYO ")))
print(A)
