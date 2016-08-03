import processing.serial.*;
import cc.arduino.*;
   
Arduino arduino;

JSONObject json;

void setup() {

  arduino = new Arduino(this, Arduino.list()[0], 57600); //change 0 to serial port used by Arduino
  
  //println(Arduino.list()); //use this to find the serial port Arduino uses?
  
  json = loadJSONObject("../../FINAL.json");
  
  JSONArray image = json.getJSONArray("image");
  
  int x,y;
  int i;

  //Notes from Ishan:
  //I would recommend that you replace the 64 here with a variable declared in setup or something, because the image won't always be 64x64 and that could cause issues.
  //Alternatively (and actually an even better solution) would be to get the length and width of the 2d part of the array from the JSON file itself, though that would take a bit of research to figure out how to do
  //I don't think the usual method of arrayName.length() will work because these aren't regular arrays, they're JSON Arrays
  
  for (x = 0; x < 72; x++) {
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