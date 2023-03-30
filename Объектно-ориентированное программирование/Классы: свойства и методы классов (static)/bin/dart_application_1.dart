import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

class Car {
  int speed = 0;
  void printSpeed() {
    print(speed);
  }
  static int totalCarCount = 0;
  static printTotalCar(){
    print(totalCarCount);
  }
}

void main() {
  final car = Car();
  car.speed = 90;
  car.printSpeed(); 
 Car.totalCarCount = 120;
  Car.printTotalCar();
}
