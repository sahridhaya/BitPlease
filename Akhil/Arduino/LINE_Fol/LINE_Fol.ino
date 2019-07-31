/*------ Arduino Line Follower Code----- */

#include <LiquidCrystal.h>

/*-------definning Inputs------*/
#define LS 1      // left sensor
#define RS 2      // right sensor
#define MS 3      // Midlle sensor

/*-------definning Outputs------*/
#define LM1 4       // left motor
#define LM2 5       // left motor
#define RM1 6      // right motor
#define RM2 7      // right motor

int countR =0;
int countT =0;
int FreeR = 0;

const int rs = 12, en = 11, d4 = 8, d5 = 9, d6 = 10, d7 = 13;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void Stop()
{
    digitalWrite(LM1, LOW);
    digitalWrite(LM2, LOW);
    digitalWrite(RM1, LOW);
    digitalWrite(RM2, LOW);
    Serial.print("STOP");
  }
void left()
  {
    digitalWrite(LM1, HIGH);
    digitalWrite(LM2, LOW);
    digitalWrite(RM1, LOW);
    digitalWrite(RM2, LOW);
    Serial.print("left");
  }
void right()
 {
    digitalWrite(LM1, LOW);
    digitalWrite(LM2, LOW);
    digitalWrite(RM1, HIGH);
    digitalWrite(RM2, LOW);
    Serial.print("right");
  }

void forward()
 {
    digitalWrite(LM1, HIGH);
    digitalWrite(LM2, LOW);
    digitalWrite(RM1, HIGH);
    digitalWrite(RM2, LOW);
    Serial.print("Forward");
  }
  
  
void setup()
{
  pinMode(LS, INPUT);
  pinMode(RS, INPUT);
  pinMode(MS, INPUT);
  pinMode(LM1, OUTPUT);
  pinMode(LM2, OUTPUT);
  pinMode(RM1, OUTPUT);
  pinMode(RM2, OUTPUT);
  
  Serial.begin(9600);
  lcd.begin(16,2);
  lcd.print("Rats and Traps");
   
  
}

void loop()     // ON BLACK this thing gives 1 that is HIGH 
{

  while(!digitalRead(MS))
  {
    if( (digitalRead(LS) == 1) && (digitalRead(RS) == 0))
    {

       right();
    }
    
  else if ( (digitalRead(LS) == 0) && (digitalRead(RS) == 1))
  {
    left();
  }

  else if( ( digitalRead(LS) == 0) && (digitalRead(RS) == 0))
   { Stop();
  delay(80);
  while((digitalRead(LS) == 1) || (digitalRead(RS) == 1) || (digitalRead(MS) ==1) )
  {
    forward();
    delay(10);
    if (digitalRead(MS)==1)
    {
    continue;
    }
    
  } 
  countT = countT++;
  }

  else if( (digitalRead(LS)==1) && (digitalRead(RS)==1))
  {
    Stop();
    delay(80);
    forward();
    delay(100);
    lcd.print("RATS :");
    lcd.write(countR);
    lcd.setCursor(0,1);
    lcd.print("TRAPS :");
    lcd.write(countT);
    delay(5000);
    lcd.clear();
    lcd.setCursor(0,0);
    
    FreeR = countT - countR;
    
    lcd.print("Free Rats : ");
    lcd.write(FreeR); 
  }


  }

  while (digitalRead(MS))

  {
    if ( (digitalRead(RS) == 1) && (digitalRead(LS) ==1))  // MS is on black and LS and RS are also on black 
    {
       Stop();
       delay(80);
  while((digitalRead(LS) == 0) || (digitalRead(RS) == 0))
  {
    forward();
  } 
  countR = countR++ ; 
      
    }

    else if( (digitalRead(LS) == 1) && (digitalRead(RS) == 1)) 

  { Stop();
  
  }
  }

  
  
}
