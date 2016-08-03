#include <ArduinoJson.h>
   
#define XSTEP 3;
#define YSTEP 4;

#define XDIR 6;
#define YDIR 7;

#define XLIM 9;
#define YLIM 10; //maybe

#define SERV 11;


void setup() {
  
  int arr[10][10][4] = {{{5, 5, 5, 5}, {6, 6, 6, 6}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {6, 6, 6, 6}, {5, 5, 5, 5}}, {{7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}}, {{7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}}, {{5, 5, 5, 5}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {5, 5, 5, 5}}, {{5, 5, 5, 5}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {5, 5, 5, 5}}, {{5, 5, 5, 5}, {6, 6, 6, 6}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {6, 6, 6, 6}, {5, 5, 5, 5}}, {{5, 5, 5, 5}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {5, 5, 5, 5}}, {{7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {7, 7, 7, 7}}, {{6, 6, 6, 6}, {5, 5, 5, 5}, {6, 6, 6, 6}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {7, 7, 7, 7}, {6, 6, 6, 6}, {5, 5, 5, 5}, {6, 6, 6, 6}}, {{6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}, {6, 6, 6, 6}}};
  
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
      i = arr[wid][hei][0];
      if (i == 1) {
        
      } else if (i == 2) {
        
      } else if (i == 3) {
        
      } else if (i == 4) {
        
      } else if ((i == 5) || (i == 7)) { //white
        
      } else if (i == 6) { //black 
        
      } else {
        
      }
    }
    nextRow(1)
  }
  
}

//goes down one row regardless of Z position
void nextRow(int delTime) {
  int Yswitch = arduino.digitalRead(YLIM);
  for (int j = 0; j < 500; j = j+1) {
    if(Yswitch == arduino.HIGH){
      arduino.digitalWrite(YSTEP, arduino.HIGH);
      delay(delTime);
      arduino.digitalWrite(YSTEP, arduino.LOW);
      delay(delTime);
    } else {
      delay(delTime);
    }
  }
}

//make one square, servo up at end
void onePix(int delTime) {
  int Yswitch = arduino.digitalRead(YLIM);
  arduino.analogWrite(SERV, 80); //down
  for (int j = 0; j < 500; j = j+1) {
    if(Yswitch == HIGH){
      arduino.digitalWrite(YSTEP, HIGH);
      delay(delTime);
      digitalWrite(YSTEP, LOW);
      delay(delTime);
    } else {
      delay(delTime);
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
