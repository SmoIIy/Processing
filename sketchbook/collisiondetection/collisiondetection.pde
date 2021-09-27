int xPosB, yPosB, xPosS, yPosS;
int diaB, diaS;
int speedB, speedS;
int dirBx, dirSx, dirBy, dirSy;
int colB, colS;


void setup() {
  size(512, 512);

  //size
  diaB = width/7;
  diaS = diaB/2;

  //starting position
  xPosB = 0;
  yPosB = 100;
  xPosS = width/2;
  yPosS = 100;

  //directions
  dirSx = 1;
  dirBx = 1;
  dirSy = 1;
  dirBy = 1;

  //colors
  colB = 40;
  colS = 150;
  colorMode(HSB);

  //speeds
  speedS = 1;
  speedB = 1;



}

void draw() {
  background(255);
  display();
  move();
  bounce();
  
  if(weHaveAHit()) {
    changeDir();
  }
  
}

void display(){
  //Big
  fill(colB);
  circle(xPosB, yPosB, diaB);
  //small
  fill(colS);
  circle(xPosS, yPosS, diaS);
}

void move() {
  xPosS = xPosS +( speedS * dirSx);
  yPosS = yPosS +( speedS * dirSy);
  xPosB = xPosB +( speedB * dirBx);
  yPosB = yPosB +( speedB * dirBy); 
}

void bounce() {
  if (xPosS > (width - diaS) || xPosS < 0 ){
    dirSx = dirSx * -1;
  }
  if (yPosS > (height - diaS) || yPosS < 0 ){
    dirSy = dirSy * -1;
  }
  if (xPosB > (width - diaB) || xPosB < 0 ){
    dirBx = dirBx * -1;
  }
  if (yPosB > (height - diaB) || yPosB < 0 ){
    dirBy = dirBy * -1;
  }
}

void changeDir() {
  dirSx=dirSx*-1;
  dirBx=dirBx*-1;
}

boolean weHaveAHit() {
  boolean hit=false;
  float centerDist = dist(xPosB,yPosB,xPosS,yPosS);
  float perfDist = (diaB+diaS)/2;
  if (centerDist < perfDist) {
    hit = true;
  }
  return hit;
}