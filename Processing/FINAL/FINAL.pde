import processing.serial.*;
import cc.arduino.*;
    

JSONObject json;

void setup() {

  arduino = new Arduino(this, Arduino.list()[0], 57600); //change 0 to serial port used by Arduino
  
  println(Arduino.list()); //use this to find the serial port Arduino uses?
  
  json = loadJSONObject("FINAL.json");
  
  
}