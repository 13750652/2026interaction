//week02_5_arduino_do_re_mi_Serial_begin_available_read_if_tone
//把Arduino 跟 Pressing 結合
//在Pressing按下key 1 2 3 對應 Arduino 的 do re mi
//用
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);//USB Serial開始傳輸,速度9600bps
}

void loop() {
  if(Serial.available()){
    char c = Serial.read();
    if(c=='1')tone(8,523,1000); //DO
    if(c=='2')tone(8,587,1000);
    if(c=='3')tone(8,659,1000);
  }
}
