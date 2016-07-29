#include <AccelStepper.h>


AccelStepper Xaxis(13, 24, 30); // pin 3 = step, pin 6 = direction
AccelStepper Yaxis(13, 25, 31); // enabler??? = 13 pin 4 = step, pin 7 = direction

void setup() {
  Xaxis.setMaxSpeed(400);
  Yaxis.setMaxSpeed(400);

  Xaxis.setSpeed(45);
  Yaxis.setSpeed(25);
}

void loop() {  
   Xaxis.runSpeed();
   Yaxis.runSpeed();
 
}
