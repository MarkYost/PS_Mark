//add easing to stuff
//add shadows

//States

//functions


//shapes
PShape flake;
PImage right;
PImage left;
PShape snowman;
PShape carrot;
PShape nose;
PShape lefthand;
PShape righthand;
PShape righthand2;
PShape happy;
PShape hat;
PShape gift;
PImage background;
PImage background2;
PImage cabin;
PImage rabbit;
PImage woof;
PImage dog;

//font
PFont font;


float speed = 7/2;
float x = 1;
float direction = 1;
float slide = .5;
float j = 10;

//hat
float startX=100;
float stopX=335;
float startY=-100;
float stopY=260;
float xpos =startX;
float ypos =startY;
float step =.05;
float pct = 0.0;

//title
float beginX=350;
float endX=350;
float beginY=-100;
float endY=150;
float xspot =beginX;
float yspot =beginY;
//float step2 =.05;
float pct2 = 0.0;


//gift1
float beginX2=350;
float endX2=400;
float beginY2=-100;
float endY2=600;
float x2spot =beginX2;
float y2spot =beginY2;
//float step22 =.05;
float pct22 = 0.0;

//gift2
float beginX3=250;
float endX3=250;
float beginY3=-800;
float endY3=600;
float x3spot =beginX2;
float y3spot =beginY2;
//float step3 =.05;
float pct3 = 0.0;

//gift3
float beginX4=275;
float endX4=275;
float beginY4=-400;
float endY4=705;
float x4spot =beginX2;
float y4spot =beginY2;
//float step4 =.05;
float pct4 = 0.0;


int q=10;
int t = 0;
int pee=255;

float h = 0;
float c = 0;
float tint = 255;

//drop
ArrayList<gift> gifts;
PImage drop;
PImage flame1;
PImage flame2;
PImage hooray;

PImage penguindown;
PImage penguinup;

penguin penguin1;
penguin penguin2;
penguin penguin3;
penguin penguin4;
penguin penguin5;
penguin penguin6;

float Ptime=0;






void setup(){
  
  size(700,700);
  shapeMode (CENTER);
  ellipseMode(RADIUS);
  flake = loadShape("snowflake2.svg");
  gift = loadShape("gift.svg");
  snowman = loadShape("snowman.svg");
  nose = loadShape("nose.svg");
  carrot = loadShape("carrot.svg");
  lefthand = loadShape("lefthand.svg");
  righthand = loadShape("righthand.svg");
  righthand2 = loadShape("righthand2.svg");
  hat = loadShape("hat.svg");
  happy = loadShape("happy.svg");
  
  right =loadImage("right.png");
  left =loadImage("left.png");
  background=loadImage("background.png");
  background2=loadImage("background2.png");
  cabin = loadImage ("cabin.png");
  rabbit = loadImage ("rabbit.png");
  drop = loadImage("gift.png");
  flame1 = loadImage("flame1.png");
  flame2 = loadImage("flame2.png");
  hooray = loadImage("hooray.png");
  woof = loadImage("woof.png");
  dog = loadImage("dog.png");
  penguinup = loadImage("penguinup.png");
  penguindown= loadImage("penguindown.png");
  
  penguin1 = new penguin (15,730);
  penguin2 = new penguin (130,730);
  penguin3 = new penguin (245,730);
  penguin4 = new penguin (360,730);
  penguin5 = new penguin (475,730);
  penguin6 = new penguin (590,730);

gifts = new ArrayList <gift>();
gifts.add(new gift(mouseX,mouseY));




}

void draw(){
    background (#539DAF);

int currentTime = millis();
  
// snowflakes 
  x += speed*direction;
  if (x>700 || x<-700){
  x=1;} //resets background to appear to be infinate
  for (float i=0; i<=width; i+=100){
  for (float y=-1400; y<=1400; y+=100){
    shape (flake,i+j,y+x);
    shape (flake,i+50+j,y+50+x);
}} 

//drop
for (int i=gifts.size()-1; i>=0; i--){
   gift present =gifts.get(i);
   present.display();
}
//santa
imageMode(CENTER);
float g = 1;
   if (pmouseX<mouseX){
      image(right, mouseX,mouseY);}
   else if (mouseX<=g){
      image(right, mouseX,mouseY);}
   else{
      image(left, mouseX,mouseY);}

imageMode(CORNER);

//background
image (background2, 1,380);
cabin (140,355);
cabin (500,405);
image (background, 1,380);


//ground    
  fill(255,255,255);
  noStroke();
  ellipse(350,1200,700,700);
  
// shadows
   if (currentTime> 1300){
   fill (191,202,203,t);
   quad (335,660,460,622,413,570,280,598);
   t=t+100;
   }
   if (currentTime> 1400){
   fill (191,202,203,t);
     quad (235,640,310,618,282,595,210,615);
   t=t+100;
   }
    if (currentTime> 1400){
   fill (191,202,203,t);
   quad (200,600,303,569,273,530,165,558);
   t=t+100;
   }
   
//lefthand
  shape (lefthand, 425,360);
  
//snowman
  shape (snowman, 350,400);
  
//nose
  if (keyPressed && key =='n'|| key == 'N'){
    shape (nose, 378,305,30,30);
  }
  else {  
    shape (carrot, 390,305);
  }
  

//righthand
  if (keyPressed && key =='f' || key == 'F'){
    shape (righthand2, 335,374);
  }
  else { 
    shape (righthand, 260,350);
  }
  
   //title
 println(currentTime);
 if (currentTime>2000){
     if (pct2<1) {
     xspot=beginX +((endX-beginX) * pct2);
     yspot=beginY +((endY-beginY) * pct2);
     pct2 +=step;
  }}
  shape (happy,xspot,yspot);
  
//rabbit
  if (keyPressed && key =='r'|| key == 'R'){
    image (rabbit, 222,80);}



//hat
 if (pct<1.0) {
    xpos=startX +((stopX-startX) * pct);
    ypos=startY +((stopY-startY) * pct);
    pct +=step;
  }
  shape (hat,xpos,ypos);


//Pee

if (currentTime>20000){
pee=pee-10;}
fill (234,231,123,pee);  
if (currentTime> 10000){
 ellipse (440,610,q,q/2);
if (q<100 && q>=0){
  q++;}
}

//gifts
   if (pct3<1) {
     x3spot=beginX3 +((endX3-beginX3) * pct3);
     y3spot=beginY3 +((endY3-beginY3) * pct3);
     pct3 +=step;
  }
  shape (gift,x3spot,y3spot,125,125);
  
  if (pct22<1) {
     x2spot=beginX2 +((endX2-beginX2) * pct22);
     y2spot=beginY2 +((endY2-beginY2) * pct22);
     pct22 +=step;
  }
  if (currentTime> 5000 && currentTime<5500){
  shape (gift,x2spot,y2spot-5);
  }
  else if (currentTime> 6000 && currentTime<6500){
  {shape (gift,x2spot-5,y2spot);
}
  }
  else if (currentTime> 7000 && currentTime<7500){
  shape (gift,x2spot+5,y2spot);
  }
  else if (currentTime> 8000 && currentTime<8500){
  shape (gift,x2spot,y2spot-5);
  }
  else{
  shape (gift,x2spot,y2spot);
  }
     if (pct3<1) {
     x4spot=beginX4 +((endX4-beginX4) * pct4);
     y4spot=beginY4 +((endY4-beginY4) * pct4);
     pct4 +=step;
  }
  shape (gift,x4spot,y4spot,75,75);






fill (0);
if (currentTime> 5000 && currentTime<6500){
  image (woof,490,525);
}
else if (currentTime> 7000 && currentTime<8500){
   image (woof,490,525);
}
else if (currentTime> 9000 && currentTime<10500){
   image (woof,490,525+random(2,10));
}

//dog
 if (currentTime>10500){
  if (keyPressed && key =='d'|| key == 'D'){
    image (dog, 314,391);}
 }
 if (keyPressed && key =='p' || key == 'P'){
 penguin1.display();
 penguin2.display();
 penguin3.display();
 penguin4.display();
 penguin5.display();
 penguin6.display();
 }
 println ("time is " + Ptime);

}




  
void mousePressed(){
   gifts.add(new gift(mouseX,mouseY));
}

void cabin(int fx, int fy){
  fill (255,255,255,tint);
  noStroke ();
  ellipse (fx+25, fy+10-h,7+c,7+c);
  image (cabin, fx, fy);
  if (h>60){h=0; c=0; tint=255;}
  h = h+1;
  c = c+.2;
  tint = tint-5;
}
  
  