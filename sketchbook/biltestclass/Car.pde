class Car {
    int speed;
    int xPos;
    int yPos;
    color c;
    int dir;


    Car(color tempC, int tempXpos, int tempYpos, int tempSpeed){
        c = tempC;
        xPos = tempXpos;
        yPos = tempYpos;
        speed = tempSpeed;
    }

    void display(){
        stroke(0);
        rectMode(CENTER);
        rect(xPos, yPos, 20, 10);

    }
    
    void move(){
        xPos = xPos + speed;
        if (xPos > width) {
            xPos = 0;
        }

    }
} 