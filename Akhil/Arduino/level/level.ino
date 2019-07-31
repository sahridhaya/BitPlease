#include <LiquidCrystal.h>
const int rs = 12, en = 11, d4 = 7, d5 = 6, d6 = 5, d7 = 4;
int LED1 = 1;
int LED2 = 2;
int LED3 = 3;
const int TP = 8;
const int EP = 9;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup() {
  // put your setup code here, to run once:
lcd.begin(16, 2);

pinMode(LED1, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(TP, OUTPUT);
pinMode(EP, INPUT);
Serial.begin(9600);
lcd.print("Water Level");
delay(3000);


}

void loop() {
  // put your main code here, to run repeatedly:
int distance = 0;
int duration = 0;
digitalWrite(TP,LOW);
delayMicroseconds(2);
digitalWrite(TP,HIGH);
delayMicroseconds(10);
digitalWrite(TP,LOW);
duration = pulseIn(EP,HIGH);
distance = duration*0.034/2;


if(distance>50)
{
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
}

else if(distance<=50 && distance>20)
{
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,HIGH);
  digitalWrite(LED3,LOW);
}  

else if(distance<=20)
{
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,HIGH);
  digitalWrite(LED3,HIGH);
}

Serial.print("Distance:");
Serial.println(distance);
if(Serial.available())
{
  delay(100);
  lcd.clear();
  lcd.print("Water Level :");
  lcd.setCursor(0,2);
  lcd.print(distance);
  lcd.print("cm");
}

}

