import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main() {
  // Каскадная нотация
  // операция .. позволяет выполнить последовательность операций над одним объектом
  Persons tom = Persons()
    ..name = 'Tom'
    ..age = 30
    ..display();
  Person jane = Person()
    ..name = 'Jane'
    ..age = 15
    ..company = (Company("Apple")
      ..country = "USA"
      ..payTaxes())
    ..display();
}

// Каскадная нотация
class Persons {
  String name = '';
  int age = 0;
  void display() {
    print('Name: $name Age: $age');
  }
}

class Person {
  String name = "";
  int age = 0;
  Company company = Company("");

  void display() {
    print("Имя: $name Возраст: $age");
    print("работает в ${company.title}");
  }
}

class Company {
  String title = "";
  String country = "";
  Company(String companyTitle) {
    title = companyTitle;
  }
  payTaxes() {
    print("Компания $title платит налоги \n");
  }
}
