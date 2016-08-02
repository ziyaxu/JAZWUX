import processing.serial.*;
import cc.arduino.*;
    

JSONObject json;

void setup() {

  //arduino = new Arduino(this, Arduino.list()[0], 57600); //change 0 to serial port used by Arduino
  
  //println(Arduino.list()); //use this to find the serial port Arduino uses?
  
  json = loadJSONObject("../../FINAL.json");
  
  JSONArray image = json.getJSONArray("image");
  
  int x,y;
  int i;
  for (x = 0; x < 64; x++) {
    for (y = 0; y < 64; y++) {
      i = image.getJSONArray(x).getJSONArray(y).getInt(0);
      if (i == 1) {
      } else if (i == 2) {
      } else if (i == 3) {
      } else if (i == 4) {
      } else if (i == 5) {
      } else if (i == 6) {
      } else if (i == 7) {
      } else {
      }
    }
  }
  
}

void nextRow() {
}

void pixel() {
}