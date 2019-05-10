#EX_3_22
x<-numeric(30)
gx<-numeric(30)
x<-runif(30,30,60)
x[2]
for(i in 1:30)
  {
  print("x:")
  print(x[i])
  gx[i]<-180/x[i]
  print("gx")
  print(gx[i])
if(30<=x[i]||x[i]<=60){
      print("fx")
      print(1/30)
      print("FX")
      print((x[i]-30)/30)
    }else if(60<=x[i]){ 
      print("FX")
      print(1)
    }else if(30>=x[i]){
      print("FX")
      print(0)
    }else{
      print("fx")
      print(0)
    }
}