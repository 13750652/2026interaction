//week07_4_processing_audio_do_re_mi
//修改自 week05_3
//修改自 week07_3
import processing.serial.*; //加這行
Serial myPort; //加這行
import processing.sound.*;
SoundFile Do,Re,Mi;
void set(){
  size(300,200);
  myPort = new Serial(this,"COM4",9600);
  Do = new SoundFile(this,"do.wav");
  Re = new SoundFile(this,"re.wav");
  Mi = new SoundFile(this,"mi.wav");
}
void draw(){
  rect(0,0,100,200);
  rect(100,0,100,200); 
  rect(200,0,100,200);
}
void mousePressed(){
  if(mouseX<100){
    Do.play();
    myPort.write("1");
  }else if(mouseX<200){
    Re.play();
    myPort.write("2");
  }else if(mouseX<300){
    Mi.play();
    myPort.write("0");
  }
}
