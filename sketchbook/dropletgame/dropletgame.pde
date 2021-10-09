Catcher catcher1;
Ball ball1;
Ball ball2;
Timer timer1;
Drop[] drops = new Drop[1000];
Border borderleft, borderright;
Button buttonTop;
Scoreboard scoreboard;
//set score valuable to 0 
int score = 0;


int totalDrops;


void setup() {
    size(600,600);
    colorMode(RGB);
    catcher1 = new Catcher(20, (176));
    ball1 = new Ball(25);
    ball2 = new Ball(35);
    //String tempT, int tempX, int tempY, int tempS, color tempC
    scoreboard = new Scoreboard("0", 35, height /2, 50, 0);

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
            //increment score
            score++;
        }
        // should decrement the score by one, every time a drops[] reaches bottom - and it
        //and does, but not how i want it to
        if (drops[i].reachedBottom()) {
        score = score - 1;
        
    }
    }

    
    //display scoreboard
    scoreboard.display(score);


    buttonTop.display();
    borderleft.display();
    borderright.display();

    catcher1.setLocation(mouseX, mouseY);
    catcher1.display();

    timer1.display();

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

    
    
}

