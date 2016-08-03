import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;

final int XSTEP = 2;
final int YSTEP = 3;

final int YDIR = 6;
final int ZDIR = 7;

final int XLIM = 2;
final int YLIM = 12; //maybe

Arduino arduino;

void setup() {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change 0 to serial port arduino is in
  
  arduino.pinMode(XSTEP, Arduino.OUTPUT);
  arduino.pinMode(YSTEP, Arduino.OUTPUT);
  
  arduino.pinMode(XLIM, Arduino.INPUT);
  arduino.pinMode(YLIM, Arduino.INPUT);
}

void draw() {
  System.out.println("go");
  move(1, 300000);
  
  noLoop();
}

void move (int speed, int turns){
  arduino.pinMode(XSTEP, Arduino.OUTPUT);
  arduino.pinMode(YSTEP, Arduino.OUTPUT);
  
  for (int j = 0; j < turns; j = j+1) {
    //if(Xswitch == arduino.HIGH){
      delay(speed);
      arduino.digitalWrite(XSTEP, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(XSTEP, arduino.LOW);
      System.out.println("go");

      delay(speed);
      arduino.digitalWrite(YSTEP, arduino.HIGH);
      delay(speed);
      arduino.digitalWrite(YSTEP, arduino.LOW);
  }
  
}