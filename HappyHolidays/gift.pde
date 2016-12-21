
class gift{
  float gx;
  float gy;
  float speed;
  float gravity=.1;
  
gift (float tempgx, float tempgy){
      gx=tempgx;
      gy=tempgy;   
}
  void display(){
    imageMode (CENTER);
    image (drop, gx,gy);
    gy= gy+speed;
    speed=speed+gravity; 
   if ((gx>157 && gx<171) && (gy>370 && gy<700)){
     image (hooray,153,329);
   }
   else if ((gx>515 && gx<535) && (gy>430 && gy<700)){
     image (flame1,525.5,390+random(1,5));
     image (flame2,525.5,410+random(2,6));
   }
   else{
   }  
}
}