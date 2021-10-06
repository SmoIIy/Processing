class Ball {

  float r; // radius
  float x, y;
  float xspeed, yspeed;
  color c = color(100, 50);

  // Constructor
  Ball(float tempR) {
    r = tempR;
    x = random(width);
    y = random(height);
    xspeed = random( -5, 5);
    yspeed = random( -5, 5);
  }

  void move() {
    x += xspeed; //increase x
    y += yspeed; //increase y

    // Check horizontal edges
    if (x > width || x < 0) {
      xspeed *= - 1;
    }

    // Check vertical edges
    if (y > height || y < 0) {
      yspeed *= - 1;
    }
  }

  //highlight if balls are touching
  void highlight() { 
    c = color(0, 150);
  }

  
  void display() {
    stroke(0);
    fill(c);
    ellipse(x, y, r*2, r*2);
    // After the ball is displayed, the color is reset back to a darker gray.
    c = color(100, 50);
  }

  
  boolean intersect(Ball b) {

    // Objects can be passed into functions as arguments too! 
    float distance = dist(x, y, b.x, b.y); // Calculate distance

    // Compare distance to sum of radii
    if (distance < r + b.r) {
      return true;
    } else {
      return false;
    }
  }
}
