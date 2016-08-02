import processing.serial.*;
import cc.arduino.*;

void setup () {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode(9, Arduino.SERVO);

}