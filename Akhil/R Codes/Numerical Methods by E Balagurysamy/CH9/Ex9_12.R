#Example 12     Chapter 9       Page no.: 313
#Estimating Function values using Cubic splines.

#Installing and importing library 'pracma'
install.packages("pracma")
library("pracma")

#Given Data
mydata<-data.frame(i= c(0,1,2,3),
                   xi= c(1,2,3,4),
                   fi= c(0.5, 0.3333, 0.25, 0.20),
       stringsAsFactors = TRUE
)
mydata

x<-mydata$xi
f<-mydata$fi

#function to find spline at xi
C <- signif(cubicspline(x, f, xi = 2.5),5)  

cat("Cubic spline of f(2.5) is :",C)