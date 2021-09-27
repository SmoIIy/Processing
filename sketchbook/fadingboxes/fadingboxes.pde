
// Exercise 5-6: Rewrite Example 5-3 so that the squares 
// fade from white to black when the mouse leaves their 
// area. 
// Hint: you need four variables, one for each 
// rectangle's color.

// Four variables, one for each square's brightness level
float bright0 = 255;
float bright1 = 255;
float bright2 = 255;
float bright3 = 255;

void setup() { 
  size(400, 400);
} 

void draw() { 
  // Draw the background
  background(0); 

  // Depending on the mouse location, a 
  // different rectangle is set to brightness 255
  if (mouseX < width/2 && mouseY < height/2) { 
    bright0 = 0;
  } else if (mouseX > width/2 && mouseY < height/2) { 
    bright1 = 0;
  } else if (mouseX < width/2 && mouseY > height/2) { 
    bright2 = 0;
  } else if (mouseX > width/2 && mouseY > height/2) { 
    bright3 = 0;
  } 

  // All rectangles always fade
  bright0 = bright0 + 1;
  bright1 = bright1 + 1;
  bright2 = bright2 + 1;
  bright3 = bright3 + 1;

  // Fill color and draw each rectangle
  noStroke(); 
  fill(bright0);
  rect(0, 0, width/2, width/2); 
  fill(bright1);
  rect(width/2, 0, width/2, height/2); 
  fill(bright2);
  rect(0, height/2, width/2, height/2); 
  fill(bright3);
  rect(width/2, height/2, width/2, height/2); 

  // Draw grid lines
  //stroke(255); 
  //line(100,0,100,200);
}
