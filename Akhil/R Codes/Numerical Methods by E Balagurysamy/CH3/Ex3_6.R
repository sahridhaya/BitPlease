# Example 6     Chapter 3       Page no.: 49
# Octal Number to Hexadecimal 


oct <- 243 # Octal number
decimalNumber <- 0
i=0

#Algorithm for Conversion of octal to decimal
while(oct != 0)
{
  decimalNumber = decimalNumber + (oct %% 10)*(8^i)
  i =i+1
  oct = as.integer(oct/10)
}

H <- as.hexmode(decimalNumber[1])

cat("The number 243 in Octal system is")
H 
cat("in Hexadecimal system.")
