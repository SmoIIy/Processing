RaceCourt Racecourt1;
Car car1;

void setup() {
  size(800,800);
  Racecourt1 = new RaceCourt("yoog");
  car1 = new Car(50, 50, 1);
}

void draw() {
  car1.addCar();
}
