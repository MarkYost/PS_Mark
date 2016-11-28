//Line Fun

float x;
float y;
float px;
float py;
float easing=0.05;


void setup (){
size (600,600);

}

void draw (){
  background(15,125,240);
  if (mousePressed == true){
    background (6,193,7);}
    
 int c1=mouseX;
 int c2=mouseY;
 int k=100;
 
 x+=(mouseX-x)*easing;
 y+=(mouseY-y)*easing;
  
  float weight=dist(x,y,px,py);
  strokeWeight(weight);
  
    
  stroke (c2,c1,c1,30);
    if (mousePressed == true){
    stroke (255,255,255,30);}
  for (int i=20; i<=600; i+=20)
  line (i,0,mouseX,mouseY);
  for (int i=20; i<=600; i+=20)
  line (i,600,mouseX,mouseY);
  for (int i=20; i<=600; i+=20)
  line (600,i,mouseX,mouseY);
  for (int i=20; i<=600; i+=20)
  line (0,i,mouseX,mouseY);
  line (0,0,mouseX,mouseY);
  
  
  stroke (c1,c2,c2,30);
    if (mousePressed == true){
    stroke (255,255,255,30);}
  for (int i=20; i<=600; i+=20)
  line (i,0,mouseX+k,mouseY-k);
  for (int i=20; i<=600; i+=20)
  line (i,600,mouseX+k,mouseY-k);
  for (int i=20; i<=600; i+=20)
  line (600,i,mouseX+k,mouseY-k);
  for (int i=20; i<=600; i+=20)
  line (0,i,mouseX+k,mouseY-k);
  line (0,0,mouseX+k,mouseY-k);
  
   stroke (0,c1,c2,30);
    if (mousePressed == true){
    stroke (255,255,255,30);}
  for (int i=20; i<=600; i+=20)
  line (i,0,mouseX-k,mouseY+k);
  for (int i=20; i<=600; i+=20)
  line (i,600,mouseX-k,mouseY+k);
  for (int i=20; i<=600; i+=20)
  line (600,i,mouseX-k,mouseY+k);
  for (int i=20; i<=600; i+=20)
  line (0,i,mouseX-k,mouseY+k);
  line (0,0,mouseX-k,mouseY+k);
  
  stroke (c1,0,c2,30);
    if (mousePressed == true){
    stroke (255,255,255,30);}
  for (int i=20; i<=600; i+=20)
  line (i,0,mouseX+k,mouseY+k);
  for (int i=20; i<=600; i+=20)
  line (i,600,mouseX+k,mouseY+k);
  for (int i=20; i<=600; i+=20)
  line (600,i,mouseX+k,mouseY+k);
  for (int i=20; i<=600; i+=20)
  line (0,i,mouseX+k,mouseY+k);
  line (0,0,mouseX+k,mouseY+k);
  
  stroke (c1,c2,0,30);
    if (mousePressed == true){
    stroke (255,255,255,30);}
  for (int i=20; i<=600; i+=20)
  line (i,0,mouseX-k,mouseY-k);
  for (int i=20; i<=600; i+=20)
  line (i,600,mouseX-k,mouseY-k);
  for (int i=20; i<=600; i+=20)
  line (600,i,mouseX-k,mouseY-k);
  for (int i=20; i<=600; i+=20)
  line (0,i,mouseX-k,mouseY-k);
  line (0,0,mouseX-k,mouseY-k);
  py=y;
  px=x;
  
  strokeWeight(2);
  noFill();
  stroke (255,255,255,80);
  rectMode(CENTER);
    if(keyPressed){
    rect(mouseX,mouseY,150,150);
    rect(mouseX,mouseY,200,200);
    rect(mouseX,mouseY,250,250);}
    else{
    ellipse(mouseX,mouseY,150,150);
    ellipse(mouseX,mouseY,200,200);
    ellipse(mouseX,mouseY,250,250);}
  
  if(keyPressed){
    rect(mouseX+k,mouseY+k,150,150);
    rect(mouseX+k,mouseY+k,200,200);
    rect(mouseX+k,mouseY+k,250,250);}
    else{
    ellipse(mouseX+k,mouseY+k,150,150);
    ellipse(mouseX+k,mouseY+k,200,200);
    ellipse(mouseX+k,mouseY+k,250,250);}
  
   if(keyPressed){
    rect(mouseX-k,mouseY+k,150,150);
    rect(mouseX-k,mouseY+k,200,200);
    rect(mouseX-k,mouseY+k,250,250);}
    else{
  ellipse(mouseX-k,mouseY+k,150,150);
  ellipse(mouseX-k,mouseY+k,200,200);
  ellipse(mouseX-k,mouseY+k,250,250);}
  
   if(keyPressed){
    rect(mouseX+k,mouseY-k,150,150);
    rect(mouseX+k,mouseY-k,200,200);
    rect(mouseX+k,mouseY-k,250,250);}
    else{
  ellipse(mouseX+k,mouseY-k,150,150);
  ellipse(mouseX+k,mouseY-k,200,200);
  ellipse(mouseX+k,mouseY-k,250,250);}
  
   if(keyPressed){
    rect(mouseX-k,mouseY-k,150,150);
    rect(mouseX-k,mouseY-k,200,200);
    rect(mouseX-k,mouseY-k,250,250);}
    else{
  ellipse(mouseX-k,mouseY-k,150,150);
  ellipse(mouseX-k,mouseY-k,200,200);
  ellipse(mouseX-k,mouseY-k,250,250);}
  }