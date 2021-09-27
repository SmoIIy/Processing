float x = 0;
float y = 0;
float spacing = 0;

void setup(){
size(400, 300);
}

void draw(){
    background(0);

    spacing = spacing + random(-2, 5);

    stroke(255);
    strokeWeight(2);

    x = 0;
    while (x < width) {    
        line(x,0,x,height);
        x = x + spacing;
    }

    x = 0;
    while (y < height) {    
        line(0,y,width,y);
        y = y + spacing;
    }



}
