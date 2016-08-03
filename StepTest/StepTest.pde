import processing.serial.*;
import cc.arduino.*;

final int YSTEP = 3;
final int ZSTEP = 4;

final int YDIR = 6;
final int ZDIR = 7;

Arduino arduino;

void setup() {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode(YSTEP, Arduino.SERVO);
  arduino.pinMode(ZSTEP, Arduino.SERVO);
  
}

void draw() {
  
  move(1, 20);
  
  noLoop();
}

void move (int speed, int turns){
  
  for (int j = 0; j < turns; j = j+1) {
    arduino.digitalWrite(YSTEP, arduino.HIGH);
    delay(speed);
    arduino.digitalWrite(YSTEP, arduino.LOW);
    delay(speed);
    arduino.digitalWrite(ZSTEP, arduino.HIGH);
    delay(speed);
    arduino.digitalWrite(ZSTEP, arduino.LOW);
    delay(speed);
  }
  
}