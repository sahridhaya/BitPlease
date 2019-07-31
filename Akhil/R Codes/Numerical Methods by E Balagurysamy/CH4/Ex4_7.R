# Example 7     Chapter 4       Page no.: 71
# Absolute and Relative Error

# Height of building as measured
H1 <- 2950
cat("Height of building as measured by Civil engineer =",H1,"cm.")

#True Height of Building
H2 <- 2945
cat("True Height of Building=",H2,"cm.")

# Height of each beam as measured
B1 <- 35
cat("Height of each beam as measured by Civil engineer=",B1,"cm.")

# True Height of beam
B2 <- 30
cat("True Height of beam",B2,"cm.")

#Absolute error in measuring building height
e1 <- H1-H2
cat("Absolute error in measuring building height=",e1,"cm")

#Relative error
er1 <- signif((e1/H2)*100, digits = 2)
cat("Relative error in measuring building height",er1,"%")

#Absolute error in measuring Beam height
e2 <- B1-B2
cat("Absolute error in measuring Beam height=",e2,"cm")
#Relative error
er2 <- signif((e2/B2)*100, digits = 2)
cat("Relative error in measuring Beam height",er2,"%")
