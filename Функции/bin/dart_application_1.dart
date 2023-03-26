import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:io';

void main() {
 sum(2, 5);
showPerson("Tom", 35);
showPerson("Alice", 18);
var n = sum2(5,3);
print(n);
showMessage(hello);
showMessage(bye);
Function operation = (a, b) => a + b; // Анонимные функции 
print(operation(4, 5));
}
// [тип] имя_функции(параметры){
// выполняемые_выражения
// }

void sum(int a, int b){
    int c = a + b;
    print(c);
}

void showPerson(String name, int age){
    print("Name: $name");
    print("Age: $age \n");
}

int sum2(int a, int b){
    return a + b;
}

// Функции могут выступать в качестве параметров для других функций ( то есть можно вложить функцию в функцию)
void showMessage(Function func){
    func();     // вызываем переданную функцию
}

void hello(){
    print("Hello!");
}

void bye(){
 
    print("Goodbye!");
}


