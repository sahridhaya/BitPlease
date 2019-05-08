#EX_3_7


k<-numeric(10)
FX<-numeric(10)
FX2<-numeric(10)
px<-numeric(10)
k<-c(1:10)
fx<-function(k){return(k/10)
}
for(i in 1:10){
px1<-(fx(k[i]))^3
px2<-(fx(k[i]-1))^3
px[i]<-px1-px2
FX[i]<-px1
FX2[i]<-px2

}
FX
FX2
px
