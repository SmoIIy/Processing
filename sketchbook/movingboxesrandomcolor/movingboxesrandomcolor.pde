int circleX = 0;
float r = random(255);
float g = random(255);
float b = random(255);
boolean started = false;

void setup(){
  background(255);
  size(1200, 800);
}

void draw(){
  fill(random(r), random(g), random(b));
  if(mouseX > width/2){
    r = random(125, 255);
    g = random(125, 255);
    b = random(125, 255);
  }
  else{
    r = random(125);
    g = random(125);
    b = random(125);
  }
  
   if(mousePressed){
     noStroke();
     rect(mouseX + random(-height/8, height/8), mouseY + random(-width/8, width/8), random(80), random(80));
    /* println("R is " + r);
     println("G is " + g);
     println("B is " + b);
     */
     println("mouseX is " + mouseX);
     println("mouseY is " + mouseY);
   }
   
}

/*void mousePressed(){
   started = true; 
}*/
