int[] xPosArr, yPosArr, diamArr, colArr, speedArr;
int numberOfCircles;
int endY;
int step;

void setup() {
  size(800, 800);
  numberOfCircles=100;
  xPosArr = new int[numberOfCircles];
  yPosArr = new int[numberOfCircles];
  diamArr = new int[numberOfCircles];
  speedArr = new int[numberOfCircles];
  colArr = new int[numberOfCircles];
  initArrays();
  endY = 10;
  step = 2;
}

void draw() {
  background(255);

  for (int i=0; i<endY; i++) {

    yPosArr[i] = yPosArr[i] + speedArr[i]++;
    fill(colArr[i], colArr[i], colArr[i]);
    circle(xPosArr[i], yPosArr[i], diamArr[i]);
  }
  if (endY < xPosArr.length) { 
    if (frameCount % step == 0) {
        endY = endY + 3;
    }
    
  } else {
      endY = 10;
      initArrays();
  }
}

void drawCircle(int x, int y, int diam, int col) {
  fill(col);
  circle(x, y, diam);
}

void moveCircle() {
}

void initArrays() {
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] = (int)random(0, width);
    yPosArr[i] = 10;
    diamArr[i] = (int)random(5, width/10);
    speedArr[i]= (int)random(1, 10);
    colArr[i]  = (int)random(255);
  }
}
