/*
 * If you use the serial monitor for debugging remember to ster the baud rate to 115200.
 * The modules are set to only one-way communication. That means that the controller can only transmit and the tank can only receive.
 * If you wish to change this for two-way communication there is plenty of documentation to do so on the internet and in examples.
 * 
 * This program receives the X and Y values and processes it into movement.
 */
#include <SPI.h>  
#include "RF24.h" 

RF24 myRadio (7, 8); 
struct Package
{
  int X=512;
  int Y=512;
  int Z=512;
};

byte addresses[6] = {"0"}; 
int Q1 = 5;
int Q2 = 6;
int Q3 = 9;
int Q4 = 10;

Package data;

void setup() 
{
  Serial.begin(115200);
  pinMode(Q1, OUTPUT);
  pinMode(Q2, OUTPUT);
  pinMode(Q3, OUTPUT);
  pinMode(Q4, OUTPUT);
  
  delay(100);
  myRadio.begin(); 
  myRadio.setChannel(115); 
  myRadio.setPALevel(RF24_PA_MAX);
  myRadio.setDataRate( RF24_250KBPS ) ; 
  myRadio.openReadingPipe(0, addresses[1]);
  myRadio.startListening();

  analogWrite(Q1, 0);
  analogWrite(Q2, 0);
  analogWrite(Q3, 0);
  analogWrite(Q4, 0);
}


void loop()  
{
   if ( myRadio.available()) 
  {
    while (myRadio.available())
    {
      myRadio.read( &data, sizeof(data) );
    }
    Serial.print("X:");
    Serial.print(data.X);
    Serial.print("      Y");
    Serial.println(data.Y);
    delay(500);
    int X = data.X;
    int Y = data.Y;
    int foward = map(X,524,1024,0,255);
    int backward = map(X,500,0,0,255);
    int right = map(Y,524,1024,0,255);
    int left = map(Y,500,0,0,255);

    if (Y<290)
forward();
else if (Y>350)
back();
else if (X<295)
ri();
else if (X>350)
le();
else
stop_();
}

}    
  
  void forward()

{
  Serial.println("");
  Serial.print("forward");
  digitalWrite(Q1, LOW);
 digitalWrite(Q2, HIGH);
 digitalWrite(Q3, LOW);
 digitalWrite(Q4, HIGH);
 }

void back()
{
  Serial.println("");
  Serial.print("BACKWARd");
  digitalWrite(Q1, HIGH);
 digitalWrite(Q2, LOW);
 digitalWrite(Q3, HIGH);
 digitalWrite(Q4, LOW);
 }

 void ri()
{Serial.println("");
  Serial.print("RIGHT");
  digitalWrite(Q1, HIGH);
 digitalWrite(Q2, LOW);
 digitalWrite(Q3, LOW);
 digitalWrite(Q4, HIGH);
 }

 void le()
{Serial.println("");
  Serial.print("Left");
  digitalWrite(Q1, LOW);
 digitalWrite(Q2, HIGH);
 digitalWrite(Q3, HIGH);
 digitalWrite(Q4, LOW);
 }
 void stop_()
{Serial.println("");
  Serial.print("StoP");
  digitalWrite(Q1, LOW);
 digitalWrite(Q2, LOW);
 digitalWrite(Q3, LOW);
 digitalWrite(Q4, LOW);
 }


