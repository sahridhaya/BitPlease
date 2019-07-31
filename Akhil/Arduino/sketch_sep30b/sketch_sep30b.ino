
int x,y,z;


void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(A0,INPUT);
pinMode(A1,INPUT);
pinMode(A2,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
x=analogRead(A2);
y=analogRead(A1);
z=analogRead(A0);
Serial.print(x);
Serial.print("\t");
Serial.print(y);
Serial.print("\t");
Serial.print(z);
Serial.println("");

delay(1000);

}
