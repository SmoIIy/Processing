float circleX;
float circleY;

void setup(){
  size(1000, 1000);
  background(255);
  frameRate(144);
  
}  

void draw(){
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(circleX, circleY, random(80), random(80));
  circleX = random(width);
  circleY = random(height);
  println(circleX);

}
