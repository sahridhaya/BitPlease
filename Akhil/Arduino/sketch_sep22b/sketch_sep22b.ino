 int GNDPin=A5;
int VccPin=A1;
int xPin=A2;
int yPin=A3;
int zPin=A4;
int Q1=10, Q2=11, Q3=12, Q4=13;
long x;
long y;
long z;
void setup() 
{
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(Q1,OUTPUT);
pinMode(Q2,OUTPUT);
pinMode(Q3,OUTPUT);
pinMode(Q4,OUTPUT);
pinMode(GNDPin, OUTPUT);
pinMode(VccPin, OUTPUT);
digitalWrite(GNDPin, LOW);
digitalWrite(VccPin, HIGH);
}

void loop() {
  // put your main code here, to run repeatedly:
x= analogRead(xPin);
y= analogRead(yPin);
z= analogRead(zPin);
if (x<330)
forward();
else if (x>340)
backward();
else if (y>340)
right();
else if (y<315)
left();
else
stop_();
}
void forward()

{
  Serial.println("");
  Serial.print("forward");
  digitalWrite(Q1, HIGH);
 digitalWrite(Q2, LOW);
 digitalWrite(Q3, HIGH);
 digitalWrite(Q4, LOW);
 }

void backward()
{
  Serial.println("");
  Serial.print("BACKWARd");
  digitalWrite(Q1, LOW);
 digitalWrite(Q2, HIGH);
 digitalWrite(Q3, LOW);
 digitalWrite(Q4, HIGH);
 }

 void right()
{Serial.println("");
  Serial.print("RIGHT");
  digitalWrite(Q1, HIGH);
 digitalWrite(Q2, LOW);
 digitalWrite(Q3, LOW);
 digitalWrite(Q4, HIGH);
 }

 void left()
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
