//week_07_2_processing_audio_two_SoundFile
//修改自week07_1
import processing.sound.*;
SoundFile sound;
SoundFile sound2;
//SoundFile sound;
//SoundFile sound2;
void setup(){
  size(300,300);
  sound = new SoundFile(this,"music.mp3");
  sound2 = new SoundFile(this, "mi.wav");
//sound2 = new SoundFlie(this,"mi.wav");
  sound.play();
}
void draw(){
  
}
void mousePressed(){
  //sound2.play();
  sound2.play();
}
