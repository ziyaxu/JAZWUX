import processing.serial.*;
import cc.arduino.*;
    

JSONObject json;

void setup() {

  //arduino = new Arduino(this, Arduino.list()[0], 57600); //change 0 to serial port used by Arduino
  
  //println(Arduino.list()); //use this to find the serial port Arduino uses?
  
  json = loadJSONObject("../../FINAL.json");
  
  JSONArray image = json.getJSONArray("image");
  
  // Get the first item in the JSON array
  //JSONObject firstpix = image.getJSONObject(0);
  
  //System.out.println(image.getJSONArray(1).getJSONArray(0).getInt(0));
  int i=image.getJSONArray(0).getJSONArray(0).getInt(0);
  System.out.println(i);
}
