
class penguin{
float px;
float py;
float speed = 8;
int direction = 1;
float top=random (500,550);

penguin(float temppx, float temppy){
  px=temppx;
  py=temppy;
  
}
void display() {
if (keyPressed && key =='p' || key == 'P'){
py += speed * direction;
if ((py>730) || (py<top)) {
direction = -direction; // Flip direction
}
if (direction == 1) {
image (penguindown, px, py); // Face right
} else {
image (penguinup, px,py); // Face left
}
}
}
void keyReleased() {
 py=0;}
}