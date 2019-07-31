# Example 12     Chapter 3       Page no.: 53
# Aritmetic rule

cat(" Let a=5,b=7 and c=3")

a=5
b=7
c=3

k <- (a+b)/c
j <- as.integer(a/c)+as.integer(b/c)

if(k != j){
  cat("(a+b)/c =",k,"\nWhich is not equal to (a/c)+(b/c)=",j)
  cat(". \nThus, this Arithmetic rule fails.")
}else{
  cat("Both the results are same")
}