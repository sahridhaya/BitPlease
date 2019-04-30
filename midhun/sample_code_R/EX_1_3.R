#EX_1_3
#consider rolling a pair of 4 sided dice
#The total sample space consist of 16 events
#the seq function expand the sequence from 1 to 4
Dice<- numeric(4)
for (i in 1:4)
  {
    Dice[i] <- i
  }
print(Dice)
Sample_Space<-expand.grid(Dice,Dice)#creating the sample space
table(Sample_Space)#table the sample space which shows number of each components
print(Sample_Space)#printing the sample space
#rolling<- sample(Sample_Space,2,replace=TRUE)#rolling the 2 dice 
#ta<-table(rolling)#finding the components of rolling
#print (rolling)#print the rolling
a<- numeric(2)#creating an array
Sum_Matrix <- matrix(nrow=4,ncol=4) #creating a sample matrix
#storing the sum of sample space of rolling 2 dice 
for (i in 1:4)
 { print(i)
for (j in 1:4)
{
  a[1]<-i
  a[2]<-j
 print(a)#stores the sample in array a
 Sum_Matrix[i,j]=sum(a)#stores the sum of the sample in the matrix b
}
}
total_sample_space<- nrow(Sample_Space)#finding the number of sample space
total_sample_space#printing the sample space count
Sum_Matrix#printing the Sum matrix
Sa <- sample(Sum_Matrix,100, replace=T)
Sa
d<-0
#to find number of even sum samples will get
for(i in 1:4)
{
  for(j in 1:4)
    {
      if((Sum_Matrix[i,j]%%2)== 0)#to check whether the sum is even
        {
        print(Sum_Matrix[i,j])
        d <-d+1#count the even sums
      }
    }
}
print(d)#number of even sums in the 100 rolling
#probability of getting even sum
Even_Sum<- d/n
Even_Sum#printing the probability of getting even numbers


  
