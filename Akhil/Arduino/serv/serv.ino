#include <Servo.h>
int i=0;
Servo myservo;
void setup() {
  // put your setup code here, to run once:
  
myservo.attach(9);
myservo.writeMicroseconds(1500);
}

void loop() {
  myservo.write(i);
  delay(2000);
  // put your main code here, to run repeatedly:
for(i; i<=180 ; i++)
{myservo.write(i);
delay(10);
}
delay(1000);
for(i; i>=0; i--)
{myservo.write(i);
delay(10);
}
}
