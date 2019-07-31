#Example 3     Chapter 9       Page no.: 280
#Determining square root using linear interpolation


#GIven table
mydata<- data.frame(x=c(1,2,3,4,5),
                    fx=c(sqrt(1), sqrt(2), sqrt(3), sqrt(4), sqrt(5)),
                    stringsAsFactors = TRUE
)
mydata

val<-mydata$x
fun<-mydata$fx

#since 2.5 lie between 2 & 3;
var=2.5
x1<- val[2]
x2<- val[3]
f1<- fun[2]
f2<- fun[3]

Ans<- signif(f1 + (var-x1)*((f2-f1)/(x2-x1)),5)
cat("Calculated square root of 2.5 is :", Ans)

Original<- signif(sqrt(var),5)
cat("Original square root of 2.5 is :", Original)

error<- Original-Ans
cat("Error is :", error)
