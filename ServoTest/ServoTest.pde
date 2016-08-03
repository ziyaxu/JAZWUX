import processing.serial.*;
import cc.arduino.*;

void setup () {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode(9, Arduino.SERVO);

}

void draw() {
  
  background(constrain(mouseX / 2, 0, 180));
  
  arduino.analogWrite(9, constrain(mouseX / 2, 0, 180));
  arduino.analogWrite(11, constrain(180 - mouseX / 2, 0, 180));
  
}