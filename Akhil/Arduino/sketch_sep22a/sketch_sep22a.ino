/*
* Gesture Recognition Robot ­ Avishkar
* Coder ­ Mayoogh Girish
* Website ­ http://bit.do/Avishkar
* This program lets you to control your robot with hand gestures
*/
int GNDPin=A5; //Set Analog pin 4 as GND
int VccPin=A1; //Set Analog pin 5 as VCC
int xPin=A2; //X axis input
int yPin=A3; //Y axis input
int zPin=A4; //Z axis input(not used)
int Q1=10,Q2=11,Q3=12,Q4=13; //Output pins to be connected to 10, 11, 12, 13 of Decoder
IC
long x; //Variabe for storing X coordinates
long y; //Variabe for storing Y coordinates
long z; //Variabe for storing Z coordinates
void setup()
{
Serial.begin(9600);
pinMode(Q1,OUTPUT);
pinMode(Q2,OUTPUT);
pinMode(Q3,OUTPUT);
pinMode(Q4,OUTPUT);
pinMode(GNDPin, OUTPUT);
pinMode(VccPin, OUTPUT);
digitalWrite(GNDPin, LOW); //Set A4 pin LOW
digitalWrite(VccPin, HIGH); //Set A5 pin HIGH
}
void loop()
{
x = analogRead(xPin); //Reads X coordinates
y = analogRead(yPin); //Reads Y coordinates
z = analogRead(zPin); //Reads Z coordinates (Not Used)
if(x<340) // Change the value for adjusting sensitivity
forward()
{Serial.println("");
Serial.println("Forward");
digitalWrite(Q1,HIGH);
digitalWrite(Q2,LOW);
digitalWrite(Q3,HIGH);
digitalWrite(Q4,LOW);}

else if (x>400) // Change the value for adjusting sensitivity
backward()
{Serial.println("");
Serial.println("Backward");
digitalWrite(Q1,LOW);
digitalWrite(Q2,HIGH);
digitalWrite(Q3,LOW);
digitalWrite(Q4,HIGH);}

else if(y>400) // Change the value for adjusting sensitivity
right()
{Serial.println("");
Serial.println("Right");
digitalWrite(Q1,HIGH);
digitalWrite(Q2,LOW);
digitalWrite(Q3,LOW);
digitalWrite(Q4,HIGH);}
else if(y<340) // Change the value for adjusting sensitivity
left()
{Serial.println("");
Serial.println("Left");
digitalWrite(Q1,LOW);
digitalWrite(Q2,HIGH);
digitalWrite(Q3,HIGH);
digitalWrite(Q4,LOW);}
else
stop_()
{Serial.println("");
Serial.println("STOP");
digitalWrite(Q1,LOW);
digitalWrite(Q2,LOW);
digitalWrite(Q3,LOW);
digitalWrite(Q4,LOW);
}


}


