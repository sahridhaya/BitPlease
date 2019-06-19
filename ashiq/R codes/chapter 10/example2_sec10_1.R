#Example 1, section 10.1, page 503
#Let L:P1 -> P2 defined by L[p(t)]= tp(t)_t^2, is L a linear transformation :

#Let at+b and ct+d be vectors in P1 and let k be a scalar, Then
#assume vectors p and q in P1 as..
p<-c(3,2,4)
p
q<-c(4,3,3)
q
#assume value of t = 5;
t<-5
#step1
Lpq = t*(p+q) + t^2
Lpq

#step2
LpLq = (t*p + t^2) + (t*q + t^2)
LpLq

#checking equality
check =function(x,y)
{
     result<-identical(Lpq, LpLq)
     if(result==FALSE)
     {
       print("L is not a linear transformation") 
       
       }
     
     else
     {
       print("L is a linear transformation")
     }
    
}

check(Lpq,LpLq)
