import processing.serial.*;
import cc.arduino.*;
   
final int YSTEP = 3;
final int ZSTEP = 4;

final int YDIR = 6;
final int ZDIR = 7;

final int YLIM = 2;
final int ZLIM = 12; //maybe

final int SERV = 11;

Arduino arduino;

JSONObject json;

void setup() {

  arduino = new Arduino(this, Arduino.list()[0], 57600); //change 0 to serial port used by Arduino
  
  arduino.pinMode(YSTEP, Arduino.OUTPUT);
  arduino.pinMode(ZSTEP, Arduino.OUTPUT);
  
  arduino.pinMode(YLIM, Arduino.INPUT);
  arduino.pinMode(ZLIM, Arduino.INPUT);
  
  arduino.pinMode(SERV, Arduino.SERVO);
  
}

void draw() {
  
  json = loadJSONObject("../../FINAL.json");
  
  JSONArray image = json.getJSONArray("image");
  
  int wid = 100;
  int hei = 100;
  
  int x,y;
  int i;

  for (x = 0; x < wid; x++) {
    for (y = 0; y < hei; y++) {
      
      i = image.getJSONArray(x).getJSONArray(y).getInt(0);
      if (i == 1) {
        
      } else if (i == 2) {
        
      } else if (i == 3) {
        
      } else if (i == 4) {
        
      } else if ((i == 5) || (i == 7)) { //white
        
      } else if (i == 6) { //black 
        
      } else {
        
      }
    }
  }
  
}

//goes down one row regardless of Z position
void nextRow(int speed) {
  int Yswitch = arduino.digitalRead(YLIM);
  for (int j = 0; j < 500; j = j+1) {
    if(Yswitch == arduino.HIGH){
      arduino.digitalWrite(YSTEP, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(YSTEP, arduino.LOW);
      delay(speed);
    } else {
      delay(speed);
    }
  }
}

//make one square, servo up at end
void onePix(int speed) {
  int Zswitch = arduino.digitalRead(ZLIM);
  arduino.analogWrite(SERV, 80); //down
  for (int j = 0; j < 500; j = j+1) {
    if(Zswitch == arduino.HIGH){
      arduino.digitalWrite(ZSTEP, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(ZSTEP, arduino.LOW);
      delay(speed);
    } else {
      delay(speed);
    }
  arduino.analogWrite(SERV, 60); //up
  }
}

void servoDown() {
  arduino.analogWrite(SERV, 80);
}

void servoUp() {
  arduino.analogWrite(SERV, 60);
}