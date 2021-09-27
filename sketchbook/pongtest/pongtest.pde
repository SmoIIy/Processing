Mouse Mouse1;
Mouse Mouse2;

void setup() {
    size(600, 600);
    //Mouse(color tempC, float tempyPos, float tempxPos, int tempheight, int tempwidth)
    Mouse1 = new Mouse(color(176, 11, 105), height / 2, 25, 60, 15);
    Mouse2 = new Mouse(color(189, 218, 85), height / 2, (width - 25), 60, 15);
}

void draw() {
    background(255);
    Mouse1.display();
    Mouse1.playerMove();

    Mouse2.display();
    Mouse2.move();

    
}

  
