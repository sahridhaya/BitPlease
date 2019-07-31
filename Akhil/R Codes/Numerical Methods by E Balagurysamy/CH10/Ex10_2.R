# Example 2     Chapter 10       Page no.: 331
#Fitting a power function model

#Given Data
mydata<- data.frame( 
                    xi= c(1,2,3,4,5),
                    yi= c(0.5,2,4.5,8,12.5),
                    log_x= c(0, 0.6931, 1.0986, 1.3863, 1.6094),
                    log_y= c(-0.6931, 0.6931, 1.5041, 2.0794, 2.5257),
                    log_xx=c(0, 0.4805, 1.2069, 1.9218, 2.5903), 
                    log_xy=c(0, 0.4804, 1.6524, 2.8827, 4.0649),  
  
  stringAsFactors=TRUE
)
mydata

n<-length(mydata$xi)
s1=sum(mydata$xi)
s2<-sum(mydata$yi)
s3<-sum(mydata$log_x)
s4<-sum(mydata$log_y)
s5<-sum(mydata$log_xx)
s6<-sum(mydata$log_xy)

#solving for intercept 'a' and slope 'b'
b= signif((n*s6 - s3*s4) / (n*s5 -(s3*s3)) ,5)
cat("Value of slope,b =",b)
ln_a= (s4 - b*s3)/ n
cat("ln a=",ln_a)
a<- signif(exp(ln_a),5)
cat("Value of intercept,a =",a)
y<-substitute(a*x^b, list(a=a,b=b))
print("The power-function equation is: ")
y
cat("Which is the required function and the computed coefficients slightly differ due to Roundoff errors.")

