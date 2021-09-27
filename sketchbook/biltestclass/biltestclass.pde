Car myCar1, myCar2, myCar3;
Car[] cars;

void setup() {
    size(512, 512);
    cars = new Car[4];
    initCars();
}

void draw() {
    background(255);

    for (int i = 0; i < 4; i++) {
        cars[i].display();
        cars[i].move();
    }
    /*
    myCar1.display();
    myCar2.display();
    myCar3.display();
    myCar1.move();
    myCar2.move();
    myCar3.move();
    */
}

void initCars(){
    //(color tempC, int tempXpos, int tempYpos, int tempSpeed)
    for (int i = 0; i < 4 ; i++) {
        cars[i] = new Car(0, 25, i + 100, 1);
    }




    /*
    myCar1 = new Car(0, 25, 15, 1);
    myCar2 = new Car(0, 25, 45, 1);
    myCar3 = new Car(0, 25, 75, 1);
    */

}