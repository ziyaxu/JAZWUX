#include <AccelStepper.h>
#include <AFMotor.h>
AF_Stepper   Xstep (400, 2);
// you can change these to DOUBLE or INTERLEAVE or MICROSTEP!
void forwardstep() {  
  Xstep.onestep(FORWARD, SINGLE);
}
void backwardstep() {  
  Xstep.onestep(BACKWARD, SINGLE);
}
AccelStepper stepper(forwardstep, backwardstep); // use functions to step
void setup()
{  
   Serial.begin(9600);           // set up Serial library at 9600 bps
   Serial.println("Stepper test!");
  
   stepper.setMaxSpeed(50);     
   stepper.setSpeed(50);        
}
void loop()
{  
   stepper.runSpeed();
}

void moveForward(){
  
}


