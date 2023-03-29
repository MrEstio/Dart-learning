import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:io';
import 'dart:math';

abstract class Posudable {
  void put();
  void fill();
}

abstract class Wightable {
  final double weight;
  Wightable(this.weight);
}

class Cup implements Posudable, Wightable {
  final double weight;
  Cup(this.weight);

  @override
  void put() {
    print('Put Cup');
  }

  @override
  void fill() {
    print('Fill Cup');
  }
}

class Plate implements Posudable, Wightable {
  final double weight;
  Plate(this.weight);

  @override
  void put() {
    print('Put Plate');
  }

  @override
  void fill() {
    print('Fill Plate');
  }
}

class Table implements Wightable {
  final double weight;
  Table(this.weight);
}

void main() {
  final listOfSome = <Wightable>[
Cup(1),
Plate(10),
Table(22),
  ];
}
