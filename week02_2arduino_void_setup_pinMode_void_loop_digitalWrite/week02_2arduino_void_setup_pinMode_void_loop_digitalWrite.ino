//week02_2arduino_void_setup_pinMode_void_loop_digitalWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);//第八個腳
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(8,HIGH);//發出高電位
  delay(1000);//等一秒
  digitalWrite(8,LOW);//發出低電位
  delay(1000);
}
