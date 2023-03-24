import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:test/test.dart';

void main() {
  for(int number = 1; number <= 100; ++number) {
    if (number % 15 == 0) {
        print("FizzBuzz");
    } else {
      if (number % 3 == 0) {
        print("Fizz");
    } else {
        if (number % 5 == 0) {
        print("Buzz");
    } else {
        print(number);
           }
        }
    }
}
 }
