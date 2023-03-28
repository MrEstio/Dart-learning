import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:io';
import 'dart:math';

import 'package:test/test.dart';

enum Color {
  Red,
  Green,
  blue,
}

class Shape {
  double get square => 0.0;
  final Color color;
  Shape(this.color);
}

class Rectangle extends Shape {
  final int sideA;
  final int sideB;
  final int sideC;

  @override
  double get square => (sideA * sideB * sideC).toDouble();


  Rectangle(
    Color color,
    this.sideA,
    this.sideB,
    this.sideC,
  ) : super(color);
}

class Circle extends Shape {
  final int radius;

 @override
  double get square => pi * (radius * radius);

  Circle(
    Color color,
    this.radius,
  ) : super(color);
}

class Square extends Shape {
  final int side;

 @override
  double get square => (side * side).toDouble();

  Square(
    Color color,
    this.side,
  ) : super(color);
}

void main() {
final shape = Shape(Color.blue);
final rectangle = Rectangle(Color.Green, 10, 3, 90);
final circle = Circle(Color.Red, 6);
final square = Square(Color.Green, 9);

print(shape.color);
print(shape.square);

print(rectangle.color);
print(rectangle.square);

print(circle.color);
print(circle.square);

print(square.color);
print(square.square);
}
