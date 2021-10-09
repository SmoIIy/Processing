class Scoreboard  {

    String t;
    int x, y, s;
    color c;

    Scoreboard (String tempT, int tempX, int tempY, int tempS, color tempC) {
        t = tempT;
        x = tempX;
        y = tempY;
        s = tempS;
        c = tempC;
    }

    void display(int score){
        textAlign(CENTER);
        fill(c);
        textSize(s);
        text(score, x, y, s);

    }

    int score (){
        int i = 0;
        return i;
    }

}
