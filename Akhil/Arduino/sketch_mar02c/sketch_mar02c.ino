

void setup() {
  // put your setup code here, to run once:
pinMode(2,OUTPUT);
pinMode(3,OUTPUT);
pinMode(4,OUTPUT);
pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);
pinMode(A0,OUTPUT);
pinMode(A0,HIGH);
digitalWrite(2,HIGH);
delay(50);
digitalWrite(2,LOW);
delay(50);
digitalWrite(3,HIGH);
delay(50);
digitalWrite(3,LOW);
delay(50);
digitalWrite(4,HIGH);
delay(50);
digitalWrite(4,LOW);
delay(50);
digitalWrite(5,HIGH);
delay(50);
digitalWrite(5,LOW);
delay(50);
digitalWrite(6,HIGH);
delay(50);
digitalWrite(6,LOW);
delay(50);
digitalWrite(7,HIGH);
delay(50);
digitalWrite(7,LOW);
delay(50);
digitalWrite(8,HIGH);
delay(50);
digitalWrite(8,LOW);
delay(50);
digitalWrite(9,HIGH);
delay(50);
digitalWrite(9,LOW);
delay(50);
for(int i=9; i>=2 ; i--)
{ digitalWrite(i,HIGH);
delay(50);
digitalWrite(i,LOW);
delay(50);
}
  
}


void loop() {
  // put your main code here, to run repeatedly:

for ( int i=0 ; i<=8; i++)
{
int x=random(10);

{digitalWrite(x,HIGH);
delay(50);
digitalWrite(x,LOW);
delay(10);
}
}
for(int i=9; i>=2 ; i--)
{ digitalWrite(i,HIGH);
delay(50);
digitalWrite(i,LOW);
delay(10);
}
for(int i=2; i<=9 ; i++)
{ digitalWrite(i,HIGH);
delay(50);
digitalWrite(i,LOW);
delay(10);
}



}
