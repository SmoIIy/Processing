class Catcher{

    int r;
    color c;
    float x;
    float y;



    Catcher(int tempR, color tempColor){
        r = tempR;
        c = tempColor;


    }

    void setLocation(float tempX, float tempY){
        x = tempX;
        y = tempY;

    }

    void display(){
        ellipseMode(CENTER);
        strokeWeight(0.5);
        stroke(0);
        //background(255);
        fill(c);
        ellipse(x, y, r*2, r*2);

    }

    boolean intersect(Drop d) {

    // Objects can be passed into functions as arguments too! 
    float distance = dist(x, y, d.x, d.y); // Calculate distance

    // Compare distance to sum of radii
    if (distance < r + d.r) {
      return true;
    } else {
      return false;
    }
  }



    



}    