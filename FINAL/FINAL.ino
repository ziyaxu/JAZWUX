#include <ArduinoJson.h>
   
#define XSTEP 3;
#define YSTEP 4;

#define XDIR 6;
#define YDIR 7;

#define XLIM 2;
#define YLIM 12; //maybe

#define SERV 11;


void setup() {
  
  pinMode(YSTEP, OUTPUT);
  pinMode(ZSTEP, OUTPUT);
  
  pinMode(XLIM, INPUT);
  pinMode(YLIM, INPUT);
  
  pinMode(SERV, SERVO);
  
}

void loop() {
  
  int wid = 100;
  int hei = 100;
  
  int x,y;
  int i;

  for (x = 0; x < wid; x++) {
    for (y = 0; y < hei; y++) {
      
      
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
  int Yswitch = arduino.digitalRead(YLIM);
  arduino.analogWrite(SERV, 80); //down
  for (int j = 0; j < 500; j = j+1) {
    if(Yswitch == HIGH){
      arduino.digitalWrite(ZSTEP, HIGH);
      delay(speed);
      digitalWrite(ZSTEP, LOW);
      delay(speed);
    } else {
      delay(speed);
    }
  analogWrite(SERV, 60); //up
  }
}

void servoDown() {
  analogWrite(SERV, 80);
}

void servoUp() {
  analogWrite(SERV, 60);
}
