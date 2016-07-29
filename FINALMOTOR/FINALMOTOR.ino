void setup() {
  // put your setup code here, to run once:
pinMode (8, OUTPUT);
pinMode(9, Output);
pinMode (8, HIGH);
moveMotor();

step pin connected to PWM on Arduino mega move 1 step 
}


void moveMotor () {
  for (int i = 0; i < 200; i++){
    digitalWrite(9, HIGH);
    digitalWrite(8, HIGH);
    delay(1);
    digitalWrite(9, LOW);
    digitalWrite(8, LOW);
    delay(1);
    
void loop() {
  // put your main code here, to run repeatedly:

}
