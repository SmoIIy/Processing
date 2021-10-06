class Border  {

    int x1, y1, x2, y2;
    color c;

     Border (int tempx1, int tempy1, int tempx2, int tempy2, color tempc) {
        x1 = tempx1;
        y1 = tempy1;
        x2 = tempx2;
        y2 = tempy2;
        c = tempc;
    }

    void display(){
        strokeWeight(2);
        stroke(c);
        line(x1, y1, x2, y2);

    }

}
