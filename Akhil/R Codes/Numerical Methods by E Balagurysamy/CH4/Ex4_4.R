# Example 4     Chapter 4       Page no.: 66
# Roundoff error

x <- 752.6835 #Given value

tx1 <- 0.7526*(10^3) #using 4 mantissa to store value
tx2 <- 0.835*(10^-1) #using 4 mantissa to store value

Tx <- tx1+tx2        # True value

cat("CHOPPING METHOD")
cat("Approximate x=",tx1,"\n   Error=",tx2)

cat("Symmetric Rounding")
cat("Error = (g(x)-1)*(10^-1) \n","     =",(tx2*10 -1)*10^-1)

cat("Approximate x=0.7527*(10^3)")