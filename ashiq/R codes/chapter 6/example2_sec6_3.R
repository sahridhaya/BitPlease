#Example 2,section 6.3, page 292
#Show that S=s1,s2,s3 spans the subspace of M22 consisting of all matrices :
s1<-matrix(c(1,0,0,0),c(2,2))
s2<-matrix(c(0,1,1,0),c(2,2))
s3<-matrix(c(0,0,0,1),c(2,2))

#Step1, an arbitrary symmetric matrix has the form :
A<-matrix(c('a','b','b','c'),c(2,2))
A
#Assume value of a,b,c and d as:
d1<-3
d2<-6
d3<-9

span_S <- (d1*s1) + (d2*s2) + (d3*s3) 
span_S 
#d1=a, d2=b, d3=c
#hence S spnas the given space