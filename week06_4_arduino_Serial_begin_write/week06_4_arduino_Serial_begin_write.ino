//week06_4_arduino_Serial_begin_write
 //修改自week06_2_arduino_button_change_mode_LED_flow
int mode = 0; //0:從小變大, 1:從大變小

void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);
  for(int i =3; i<=13;i++){
    pinMode(i,OUTPUT); 
  }
  tone(8,523,100);delay(100); //Do
  tone(8,784,100);delay(100); //Mi
}

int prev = HIGH, now = 3; //prev是按鈕(前一瞬間)的狀態,now現在要發亮的LED

void loop() {
  if(prev == HIGH && digitalRead(2) == LOW){
    if(mode==0) { //從0變1
      mode = 1; //從0變1
      tone(8,784,100);delay(100);
      tone(8,523,100);delay(100);
    }
    else {
      mode = 0; //從1變0
      tone(8,523,100);delay(100);
      tone(8,784,100);delay(100);
    }

    prev = LOW;

    if(mode==1) Serial.write('1');
    if(mode==0) Serial.write('0');

  } else if(prev==LOW && digitalRead(2)==HIGH){
    prev = HIGH;
  }

  if(mode==0){ //0:從小變大,
    now++;
    if(now>13) now = 3;//超過範圍,又變回3
  } else{ //1:從大變小
    now--;
    if(now<3) now=13;
  }

  digitalWrite(now,HIGH); //亮
  delay(100); //等一下
  digitalWrite(now,LOW); //暗
}
