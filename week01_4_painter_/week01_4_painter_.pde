//week01_4_painter_
void setup(){
  size(500,500);
  background(255);//白色背景
  strokeWeight(5);
}
void draw(){
  if (mousePressed) 
    if (mouseButton==LEFT)stroke(0);
    if (mouseButton==RIGHT)stroke(255);
    if (mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
