void setup(){
size (1020,780);  
background (#951B23);
}
void draw(){
fill(180,44,53,20);
noStroke();  
rect(0,0,40,height);
rect(80,0,40,height);
rect(160,0,40,height);
rect(240,0,40,height);
rect(320,0,40,height);
rect(400,0,40,height);
rect(480,0,40,height);
rect(560,0,40,height);
rect(640,0,40,height);
rect(720,0,40,height);
rect(800,0,40,height);
rect(880,0,40,height);
rect(960,0,40,height);
rect(1040,0,40,height);

fill (126,9,17,40);
rect(0,0,width,40);
rect(0,80,width,40);
rect(0,160,width,40);
rect(0,240,width,40);
rect(0,320,width,40);
rect(0,400,width,40);
rect(0,480,width,40);
rect(0,560,width,40);
rect(0,640,width,40);
rect(0,720,width,40);

fill(57,48,49,80);
noStroke();  
rect(3,0,2,height);
rect(83,0,2,height);
rect(163,0,2,height);
rect(243,0,2,height);
rect(323,0,2,height);
rect(403,0,2,height);
rect(483,0,2,height);
rect(563,0,2,height);
rect(643,0,2,height);
rect(723,0,2,height);
rect(803,0,2,height);
rect(883,0,2,height);
rect(963,0,2,height);
rect(1043,0,2,height);

rect(33,0,8,height);
rect(113,0,8,height);
rect(193,0,8,height);
rect(273,0,8,height);
rect(353,0,8,height);
rect(433,0,8,height);
rect(513,0,8,height);
rect(593,0,8,height);
rect(673,0,8,height);
rect(753,0,8,height);
rect(833,0,8,height);
rect(913,0,8,height);
rect(993,0,7,height);
rect(1073,0,8,height);

fill (240,237,237,40);
rect(0,5,width,10);
rect(0,85,width,10);
rect(0,165,width,10);
rect(0,245,width,10);
rect(0,325,width,10);
rect(0,405,width,10);
rect(0,485,width,10);
rect(0,565,width,10);
rect(0,645,width,10);
rect(0,725,width,10);

rect(0,25,width,2);
rect(0,105,width,2);
rect(0,185,width,2);
rect(0,265,width,2);
rect(0,345,width,2);
rect(0,425,width,2);
rect(0,505,width,2);
rect(0,585,width,2);
rect(0,665,width,2);
rect(0,745,width,2);

stroke(255,255,255);
noFill();
strokeWeight(20);
ellipse(300,500,300,300);
fill(255,255,255);
noStroke();
ellipse(300,500,50,50);
ellipse(500,550,60,60);


stroke(255,255,255);
noFill();
strokeWeight(20);
ellipse(1020-250,500,300,300);
fill(255,255,255);
noStroke();
ellipse(1020-250,500,50,50);

stroke(255,255,255);
noFill();
strokeWeight(20);
line(300,500,500,550);
line(300,500,444,300);
line(500,550,430,250);
line(444,300,690,300);
line(500,550,690,300);
line(1020-250,500,650,225);
arc(700,270,100,100,PI+HALF_PI,TWO_PI+QUARTER_PI);
line(700,220,650,220);
line(460,245,390,235);
}