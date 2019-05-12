#EX_5_12
#You call the IRS hotline and you are told that you are the 56th person in line,
#excluding the person currently being served
n<-56
lamda<-2#callers depart with poisson process a rate of lamda
# How long will you have to wait on the average until your service starts, 
#and what is the probability you will have to wait for more than an hour? 
#the waiting time Y is Erlang of order 56
EY<-n/lamda
#the function to calculate the probabilty you have to wait for more than an hour
PY60<-function(y)
{
 return((lamda^n)*(y^(n-1))*(exp(1)^(-lamda*y))/factorial(n-1))
}
probability<-integrate(PY60, 60, Inf)#the integral function to calculate the probability of waiting more than an hour
probability$val
