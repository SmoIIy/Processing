class Ball {
    color c;
    float xpos;
    float ypos;
    float xspeed;

    Ball(){

        c = 125;
        xpos = 25;
        ypos = 25;
        xspeed = 1;
    }

        void display(){
        ellipseMode(CENTER);
        fill(c);
        ellipse(xpos, ypos, 25, 25);

        }

        void move(){
        xpos = xpos + xspeed;
        if ( xpos > width) {
            xpos = 0;
        }

    }

}
