Ball myBall;

void setup() {
    size(512, 512);
    myBall = new Ball();

}

void draw() {
    background(255);
    myBall.display();
    myBall.move();
}


