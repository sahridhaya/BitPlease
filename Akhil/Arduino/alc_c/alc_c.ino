const int AOUTpin=0;//the AOUT pin of the alcohol sensor goes into analog pin A0 of the arduino
const int DOUTpin=8;//the DOUT pin of the alcohol sensor goes into digital pin D8 of the arduino
const int ledPin=13;//the anode of the LED connects to digital pin D13 of the arduino
const int ledPin1=9;//the anode of the LED connects to digital pin D13 of the arduino

int limit;
int value;
int Sval=0;
int Aval;

void setup() {
Serial.begin(9600);//sets the baud rate
pinMode(DOUTpin, INPUT);//sets the pin as an input to the arduino
pinMode(ledPin, OUTPUT);//sets the pin as an output of the arduino
pinMode(ledPin1, OUTPUT);//sets the pin as an output of the arduino

for(int i=0; i<20 ; i++)
{Sval= Sval+ analogRead(AOUTpin);}
Aval = (Sval/20);
}

void loop() {
value= analogRead(AOUTpin);//reads the analaog value from the alcohol sensor's AOUT pin
limit= digitalRead(DOUTpin);//reads the digital value from the alcohol sensor's DOUT pin
delay(100);
if (value >= Aval+ 8){
digitalWrite(ledPin, HIGH);//if limit has been reached, LED turns on as status indicator
digitalWrite(ledPin1 ,HIGH);
}
else{
digitalWrite(ledPin, LOW);//if threshold not reached, LED remains of
digitalWrite(ledPin1, LOW);
}
}

