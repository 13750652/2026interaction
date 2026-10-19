//week07_1_processing_audio_SoundFile_play
//像要在電腦,用程式控制音樂/音樂的輸入
//方法1:Processing 的 Sound 外掛,方法2:Minim的外掛
//Sketch - Library - Mange Library...
//或者用google:processing sound library download

import processing.sound.*;  //使用外掛
SoundFile sound; //宣告變數
void setup(){
  size(300,300);
  sound = new SoundFile(this, "music.mp3");
  sound.play(); //準備好 music.mp3 拉到程式裡,播放
}
void draw(){
  
}
