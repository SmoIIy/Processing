class Button  {

    String text;
    int x, y;
    int w, h;
    int c;

    Button (String tempText, int tempX, int tempY, int tempW, int tempH, int tempC) {
        text = tempText;
        x = tempX;
        y = tempY;
        w = tempW;
        h = tempH;
        c = tempC;
    }

    void display(){
        rectMode(CENTER);
        strokeWeight(0.5);
        stroke(0);
        fill(c);
        rect(x, y, w, h);    

    }

}
