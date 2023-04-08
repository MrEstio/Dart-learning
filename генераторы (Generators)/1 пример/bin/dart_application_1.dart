import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:async';

Iterable<int> generator() sync* {
  yield 5;
  yield 7;
  for (var i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  final result = generator();
  print(result);
}
