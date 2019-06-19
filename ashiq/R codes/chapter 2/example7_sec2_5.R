#Example 7,section 2.5, page 154
#Show that transition matrix T is regular:
 T<-matrix(c(0.2,0.8,1,0),c(2,2))
 square<- T %*% T
 print(square)
 
 check =function(x,y)
 {
   count<-0
 for (num in square)
   if(num>0)
    { print("positive")
     count=count+1
    if(count==4)
    {
      y<-TRUE
      return(y)
      next
    }
      }
   else
   {
     print("negtive")
     break
   }  }
 
 K<-check(square) #returns true if all entries are positive,hence T is regular
 if(K==TRUE)
   {
   print("T is regular")
 }
