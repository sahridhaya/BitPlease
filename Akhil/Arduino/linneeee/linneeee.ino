int ls;
int rs;
int ms;
int lm1=3;
int lm2=5;
int rm1=10;
int rm2=11;

void setup() {
  // put your setup code here, to run once:

  pinMode(2,INPUT);
  pinMode(8,INPUT);
  pinMode(12,INPUT);

  pinMode(3,OUTPUT);
  pinMode(5,OUTPUT);//8,9-left motor:
  pinMode(6,OUTPUT);// left enable
  
  pinMode(10,OUTPUT);// 10,11- right motor:
  pinMode(11,OUTPUT);
   pinMode(9,OUTPUT);// right enable
}

void loop() {
  // put your main code here, to run repeatedly:
  ls=digitalRead(8);
  rs=digitalRead(12);
  ms=digitalRead(2);
  //forward
  if(ls==LOW && ms==HIGH && rs==LOW)
  {
    analogWrite(lm1,100);
  analogWrite(lm2,0);
  analogWrite(rm1,100);
  analogWrite(rm2,0);
  digitalWrite(6,HIGH);
  digitalWrite(9,HIGH);
  }
  // right
  else if((ls==LOW && ms==HIGH && rs==HIGH)||(ls==LOW && ms==LOW && rs==HIGH))
  {
    analogWrite(lm1,100);
  analogWrite(lm2,0);
  
  analogWrite(rm1,0);
  analogWrite(rm2,100);
  digitalWrite(6,HIGH);
  digitalWrite(9,HIGH);
  }
  //left
  else if((ls==HIGH && ms==LOW && rs==LOW)||(ls==HIGH && ms==HIGH && rs==LOW))
  {
  analogWrite(lm1,0);
  analogWrite(lm2,100);
  analogWrite(rm1,100);
  analogWrite(rm2,0);
  digitalWrite(9,HIGH);
  digitalWrite(6,HIGH);
  }
  //turn around or stop
  else if(ls==LOW && ms==LOW && rs==LOW)
  {
    
    {
       analogWrite(lm1,100);
  analogWrite(lm2,0);
  analogWrite(rm1,0);
  analogWrite(rm2,100);
  digitalWrite(6,HIGH);
  digitalWrite(9,HIGH);
    }
  }
  // prefer left
  else if(ls==HIGH && ms==HIGH)
  {
    analogWrite(lm1,0);
  analogWrite(lm2,0);
  analogWrite(rm1,0);
  analogWrite(rm2,0);
  digitalWrite(6,LOW);
  digitalWrite(9,LOW);
  }
  
  
}
