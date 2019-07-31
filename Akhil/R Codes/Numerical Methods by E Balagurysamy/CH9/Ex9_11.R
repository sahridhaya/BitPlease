#Example 11     Chapter 9       Page no.: 306
#Cubic splines

#Installing and importing library 'pracma'
install.packages("pracma")
library("pracma")

#Given Data
mydata<-data.frame(i= c(0,1,2),
                  xi= c(4,9,16),
                  fi= c(2,3,4),
stringsAsFactors = TRUE  
  
)
mydata

x<-mydata$xi
f<-mydata$fi

#function to find spline at xi
C <- signif(cubicspline(x, f, xi = 7),5)  

cat("Cubic spline of f(7) is :",C)

