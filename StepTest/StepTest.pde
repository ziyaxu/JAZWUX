import processing.serial.*;
import cc.arduino.*;

void setup() {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  move(1, 50);
  
}

void move (int speed, int turns){
  for (int j = 0; j < turns; j = j+1) {
    arduino.digitalWrite(13, arduino.HIGH);
    delay(speed);
    arduino.digitalWrite(13, arduino.LOW);
    delay(speed);
  }
}