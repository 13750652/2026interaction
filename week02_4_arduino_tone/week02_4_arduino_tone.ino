//week02_4_arduino_tone
void setup() { 
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
  
  
  tone(8,523,1000); //DO的聲音
  delay(1000);
  tone(8,587,1000);
  delay(1000);
  tone(8,659,1000);
  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:
  
}
