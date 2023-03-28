import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:io';

class Square {
  final int lenght;
  final int weight;
  Square(int side)
      : lenght = side,
        weight = side {
    print('S (Площадь квадрата) = ${lenght * weight}');
  }
  Square.wrong(this.lenght, this.weight);
  @override
  String toString() {
    return 'weight: $weight, lenght: $lenght';
  }
}

class Square2 {
  final int _side;
  int get lenght => _side;
  int get weight => _side;
  Square2(this._side);

  @override
  String toString() {
    return 'weight: $weight, lenght: $lenght';
  }
}

class Person {
  final String name;
  final String surname;
  final String twoName;
  final int age;
  Person(
    this.name,
    this.surname,
    this.twoName,
    this.age,
  );
  // Делаем вывод на консоль из класса
  @override
  String toString() {
    return '$name $surname $twoName $age';
  }
}

void main() {
  final one = Person('Alex', 'Cawlperwod', 'Nikitich', 46);
  print(one);
  final square = Square(40);
  print(square);
  final wrong = Square.wrong(40, 5);
  print(wrong);
  final square2 = Square2(20);
  print(square2);
}
