#Example 12,section 6.2, page 284
#Consider the set S of 2x3 ,matrices given by,
s1<-matrix(c(1,0,0,0,0,0),c(2,3))
s2<-matrix(c(0,0,1,0,0,0),c(2,3))
s3<-matrix(c(0,0,0,1,0,0),c(2,3))
s4<-matrix(c(0,0,0,0,0,1),c(2,3)) #Check whether span S is the subset of M23 :

#Assume value of a,b,c and d as:
a<-1
b<-3
c<-5
d<-7
span_S <- (a*s1) + (b*s2) + (c*s3) + (d*s4)
span_S # this shows that ,span S is the subset of M23 consisting of all matices of the form
