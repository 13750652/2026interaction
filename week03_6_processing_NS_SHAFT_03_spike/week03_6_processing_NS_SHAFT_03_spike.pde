//week03_6_processing_NS_SHAFT_03_spike
//修改自week03_5
//小朋友下樓梯 現在加上方的尖刺+轉動
void setup(){
  size(600,600); //小畫家\YT截圖
  for(int i=0;i<20;i++) floorX[i] = int(random(25,600-140-25));
}
int [] floorX = new int[20]; //準備20個地板
void draw(){
  background(0,5,95); //小畫家的吸管"吸色彩"再編輯
  fill(47,105,190); //左右磚的色彩
  for(int i = 0;i<=10;i++){
    rect(0,i*60,25,60); //左邊的牆
    rect(600-25,i*60,25,60); //右邊的牆
  }
   fill(208,216,189);//畫地板
   //rect(200,200,140,25);//大概量一寬度 140
   for(int i=0;i<20;i++){
     //rect(floorX[i],75+i*75,140,25);
     //rect(floorX[i],75+i*75-frameCount,140,25); //y座標移植往上捲
     //用完20個地板後，會出現空白。加了%(20*75)即%1500後,還是怪怪的
     float y = 75 + i * 75 - frameCount%1500;
     if(y < -25)y += 1500;
     rect(floorX[i],y,140,25);
   }
   fill(255); //畫針刺
   for(int i=0;i<24;i++){
     float x = i * 23+27;
     triangle(x,0,x+7,30,x+18,0); //左上、下、右下
   }
}
