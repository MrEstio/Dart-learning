import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:async';


Future<int> sum(int a, int b) {
  return Future.sync(() => a + b);
}

Future<void> example() async {
final a = await sum(1, 4);
print(a);
final b = await sum(4, a);
print(b);
final c = await sum(b, a);
print(c);
}

void main() {
  print('start');
  example();
  print('end');
}