import processing.serial.*;

import cc.arduino.*;
import org.firmata.*;

  
// The following short JSON file called "data.json" is parsed 
// in the code below. It must be in the project's "data" folder.
//
// {
//   "id": 0,
//   "species": "Panthera leo",
//   "name": "Lion"
// }

JSONObject json;

void setup() {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  

  json = loadJSONObject("work.json");

  println(json);
}

// Sketch prints:
// 0, Panthera leo, Lion