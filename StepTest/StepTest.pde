import processing.serial.*;
import cc.arduino.*;

final int XSTEP = 2;
final int YSTEP = 3;
final int ZSTEP = 4;

final int XDIR = 5;
final int YDIR = 6;
final int ZDIR = 7;

Arduino arduino;

void setup() {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  move(20, 50);
  
}

void move (int speed, int turns){
  
  /*for (int j = 0; j < turns; j = j+1) {
    arduino.digitalWrite(XSTEP, arduino.HIGH);
    arduino.digitalWrite(YSTEP, arduino.HIGH);
    arduino.digitalWrite(ZSTEP, arduino.HIGH);
    delay(speed);
    arduino.digitalWrite(XSTEP, arduino.LOW);
    arduino.digitalWrite(YSTEP, arduino.LOW);
    arduino.digitalWrite(ZSTEP, arduino.LOW);
    delay(speed);
  }*/
  
  for (int j = 0; j < turns; j = j+1) {
    arduino.digitalWrite(XSTEP, arduino.HIGH);
    arduino.digitalWrite(YSTEP, arduino.HIGH);
    delay(speed);
    arduino.digitalWrite(XSTEP, arduino.LOW);
    arduino.digitalWrite(YSTEP, arduino.LOW);
    delay(speed);
    arduino.digitalWrite(ZSTEP, arduino.HIGH);
    delay(speed);
    arduino.digitalWrite(ZSTEP, arduino.LOW);
    delay(speed);
  }
  
}