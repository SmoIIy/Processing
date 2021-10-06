class RaceCourt {
  // attributes, tilstande
  String name;
  Car[] cars;

  RaceCourt(String name) {
    this.name=name;
    this.cars = new Car[5];
  }
  
  void addCar(Car car) {
    for (int i = 0; i < cars.length; i++) {
      if (cars[i] == null) {
        i = cars.length - 1;
      }
    }
    
    cars[0]=car;
  }
}
