#Example 4, section 1.7, page 93
#Verify the property (A')T = (At)' 

A<-matrix(c(1,3,2,4), c(2,2))
first<-solve(A)
trans<-t(first) #LHS
print(trans)
second<-t(A)
inv<-solve(second) #RHS
print(inv)
all.equal(inv,trans) #returns true if matrices are same


