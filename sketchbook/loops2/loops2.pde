int blockX = width / 8;
int blockY = height / 8;

void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  int blockX = width / 8;
int blockY = height / 8;

/*
  for (int y = 0; y < 8; y++) {
    for (int x = 0; x < 8; x++) {
      if ((x + y + 1) % 2 == 0) {
        fill(255);        
      } else {
        fill(0);
      }
      rect(y * blockY, x * blockX, (y + 1) * blockY, (x + 1) * blockX);
    }
  }
  */
  for (int i = 0; i < 8; i ++) {
    for (int j = 0; j < 8; j ++) {
      if ((i + j + 1) % 2 == 0) {
        fill(255, 255, 255); // white
      } else {
        fill(0, 0, 0); // black
      }
      rect(i * blockX, j * blockY, (i + 1) * blockX, (j + 1) * blockY);     
    } 
  }
 
}
