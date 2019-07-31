if(X > 524 && Y < 524 && Y > 500){

      analogWrite(OUT3, 255);
      analogWrite(OUT4, 0);
      analogWrite(OUT1, 255);
      analogWrite(OUT2, 0);
    }else if(X < 500 && Y < 524 && Y > 500){
      analogWrite(OUT4, 255);
      analogWrite(OUT3, 0);
      analogWrite(OUT2, 255);
      analogWrite(OUT1, 0);
    }else if(X < 524 && X > 500 && Y < 524 && Y > 500){
      analogWrite(OUT4, 0);
      analogWrite(OUT3, 0);
      analogWrite(OUT2, 0);
      analogWrite(OUT1, 0);
    }else if(X < 524 && X > 500 && Y > 524){
      analogWrite(OUT4, 0);
      analogWrite(OUT3, left);
      analogWrite(OUT2, left);
      analogWrite(OUT1, 0);
    }else if(X < 524 && X > 500 && Y < 500){
      analogWrite(OUT4, right);
      analogWrite(OUT3, 0);
      analogWrite(OUT2, 0);
      analogWrite(OUT1, right);
    }else if(X > 524 && Y > 524){
      analogWrite(OUT3, foward);
      analogWrite(OUT4, 0);
      analogWrite(OUT1, foward-right);
      analogWrite(OUT2, 0);
    }else if(X > 524 && Y < 500){
      analogWrite(OUT3, foward-left);
      analogWrite(OUT4, 0);
      analogWrite(OUT1, foward);
      analogWrite(OUT2, 0);
    }else if(X < 500 && Y > 524){
      analogWrite(OUT4, backward);
      analogWrite(OUT3, 0);
      analogWrite(OUT2, backward-right);
      analogWrite(OUT1, 0);
    }else if(X < 500 && Y < 500){
      analogWrite(OUT4, backward-left);
      analogWrite(OUT3, 0);
      analogWrite(OUT2, backward);
      analogWrite(OUT1, 0);
    }
