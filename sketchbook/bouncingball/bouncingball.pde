int speed = 1;
int rev = -1;
boolean button = false;
//Ball
int x = 0;
int y = 0;
int w = 40;
int h = 40;



void setup() {
  size(400, 400);
  
}

void draw() {

  background(255);

  x = x + speed;
  y = y + speed;
  if((x > width ) || (x < 0) || (y > height ) || (y < 0)){
    speed = speed * rev;
    rev = rev - 1;
    speed = speed + 1;
  }
  if (rev <= -4){
    rev = -1;
  }
  if (button){
    stroke(0);
    fill(100);
  } else {
    stroke(100);
    fill(0);
  }
  
  

  ellipse(x, y, w, h);

  

  println("Rev is " + rev );
}

void mousePressed() {
   
    button = !button;
}
  



    
  

