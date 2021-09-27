class Mouse{


    float yPos;
    float xPos;
    color c;
    int rectHeight;
    int rectWidth;

    Mouse(color tempC, float tempyPos, float tempxPos, int tempheight, int tempwidth){
        c = tempC;
        xPos = tempxPos;
        yPos = tempyPos;
        rectHeight = tempheight;
        rectWidth = tempwidth;
}

void display(){
    stroke(0);
    strokeWeight(1);
    fill(c);
    rectMode(CENTER);
    rect(xPos, yPos, rectWidth, rectHeight);

    }

void playerMove(){
    //yPos = mouseY;
    if (keyPressed) {
        if (key == 'w' ){
            println("1");
            yPos = yPos - 3;
        } else if (key == 's') {
            yPos = yPos + 3;
        }
        
    }
}

void move(){
    int dir = 1;
    int speed = 1;
    
    if ((yPos > height) || (yPos < 0)) {
        speed = speed * -1;
        println("outofbounds");
    }
    yPos = yPos + speed;
    println(yPos);
    println("Speed is " + speed);
    println("Dir is " + dir);
}



}    

