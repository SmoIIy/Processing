void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  stroke(0);
  fill(125, 0 ,0);
  strokeWeight(8);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY, (width/5), (width/5));
  point(mouseX,mouseY);//næsen
  point(mouseX-((width/10)/2/2),mouseY-((width/10)/2/2));//venstre øje
  point(mouseX+((width/10)/2/2),mouseY-((width/10)/2/2));//Højre øje
  noFill();
  arc(mouseX, mouseY+(height/30), (width/25), (height/30), 0, 3.14);
  
}
