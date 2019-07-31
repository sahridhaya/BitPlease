# Example 16     Chapter 6       Page no.: 187
# Bairstow's method

#Given function
f <- function(x) {
  (x^3)+x+10 
}

#Given values
u= 1.8
v= -1

es=1
#%
n=4

count=1

ear=100
eas=100

a<-c(10,1,0,1)
b<-matrix(0,n)
c<-matrix(0,n)

while ((ear>es) & (eas>es)){
  b[n]=a[n]
  b[n-1]=a[n-1]+u*b[n]
  for (i in seq(n-2,1,-1)){
    b[i]=a[i]+u*b[i+1]+v*b[i+2]
  }
  c[n]=b[n]
  c[n-1]=b[n-1]+u*c[n]
  for (i in seq((n-2),2,-1)){
    c[i]=b[i]+u*c[i+1]+v*c[i+2]
  }
dv=((-b[1])+(b[2]*c[2]/c[3]))/(c[3]-(c[4]*c[2]/c[3]))
du=(-b[2]-c[4]*dv)/c[3]
u=u+du
v=v+dv
ear=abs(du/u)*1000
eas=abs(dv/v)*1000
cat("Iteration:",count,"\n u: ",u,"\n","v:",v,"\n","************************************\n")
count=count+1;
}
cat("Final value of Quadratic quotients u & v are:\n","u: ",u,"\n v:",v,"\n","************************************\n")

# Value in the textbook is of one iteration only and it is clearly given that the final answers are 2 and -5