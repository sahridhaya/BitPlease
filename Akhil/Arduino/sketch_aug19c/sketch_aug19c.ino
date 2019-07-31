 

#define M0 2       // left motor
#define M1 4       // left motor
#define M2 14       // right motor
#define M3 11       // right motor

void setup()
{
  pinMode(13, INPUT);
  pinMode(12, INPUT);
  pinMode(M0, OUTPUT);
  pinMode(M1, OUTPUT);
  pinMode(M2, OUTPUT);
  pinMode(M3, OUTPUT);
}
void loop()
{
  if(digitalRead(13) && digitalRead(12))     // Move Forward
  {
    digitalWrite(M0, HIGH);
    digitalWrite(M1, LOW);
    digitalWrite(M2, HIGH);
    digitalWrite(M3, LOW);
  }
  else
  if(!(digitalRead(13)) && digitalRead(12))     // Turn right
  {
    digitalWrite(M0, LOW);
    digitalWrite(M1, LOW);
    digitalWrite(M2, HIGH);
    digitalWrite(M3, LOW);
  }
  else
  if(digitalRead(13) && !(digitalRead(12)))     // turn left
  {
    digitalWrite(M0, HIGH);
    digitalWrite(M1, LOW);
    digitalWrite(M2, LOW);
    digitalWrite(M3, LOW);
  }
  else
  if(!(digitalRead(13)) && !(digitalRead(12)))     // stop
  {
    digitalWrite(M0, LOW);
    digitalWrite(M1, LOW);
    digitalWrite(M2, LOW);
    digitalWrite(M3, LOW);
  }
}
