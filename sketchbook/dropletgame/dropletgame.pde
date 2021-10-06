Catcher catcher1;
Ball ball1;
Ball ball2;
Timer timer1;
Drop[] drops = new Drop[1000];
Border borderleft, borderright;
Button buttonTop;

int totalDrops;


void setup() {
    size(600,600);
    colorMode(RGB);
    catcher1 = new Catcher(20, (176));
    ball1 = new Ball(25);
    ball2 = new Ball(35);

    timer1 = new Timer(10000);
    timer1.start();

    borderleft = new Border(70, height, 70, 0, 0);
    borderright = new Border(width - 70, height, width - 70, 0, 0);
    //String tempText, int tempX, int tempY, int tempW, int tempH, int tempC
    buttonTop = new Button("hello", 35, 80, 25, 70, (176));
    
}

void draw() {
    background(255);

    drops[totalDrops] = new Drop();
    totalDrops++;

    if (totalDrops >= drops.length) {
        totalDrops = 0; //start over
    }

    for (int i = 0; i < totalDrops; i++){
        drops[i].move();
        drops[i].display();
        if (catcher1.intersect(drops[i])) {
            drops[i].caught();
        }
    }

    buttonTop.display();
    borderleft.display();
    borderright.display();

    catcher1.setLocation(mouseX, mouseY);
    catcher1.display();

    /*
    ball1.display();
    ball2.display();

    ball1.move();
    ball2.move();

    if (ball1.intersect(ball2)){
        ball1.highlight();
        ball2.highlight();

    }

    boolean intersecting = ball1.intersect(ball2);
    if(intersecting){
        println("The balls are intersecting!");
    }*/

    timer1.display();
    
}

