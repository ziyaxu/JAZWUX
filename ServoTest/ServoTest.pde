import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

void setup () {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode(11, Arduino.SERVO);

}

void draw() {
  arduino.analogWrite(11, 80);
  delay(1);
  arduino.analogWrite(11, 60);
}