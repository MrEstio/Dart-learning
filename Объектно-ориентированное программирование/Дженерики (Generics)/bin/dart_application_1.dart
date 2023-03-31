import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:math';
import 'dart:io';
import 'dart:convert';

class Stack<Element> {
  var storage = <Element>[];
  void push(Element a) => storage.add(a);
  Element pop() => storage.removeLast();
  @override
  String toString() {
    return storage.toString();
  }
}

T sum<T extends num>(T a, T b) {
  return (a + b) as T;
}

String some<V, Z>(V o, Z p) {
  return '$o $p';
}

void main() {
  final a = sum(5.4, 3);
  print(a);

  final stack = Stack<int>();
  stack.push(34);
  print(stack);
  stack.push(31);
  print(stack);
  stack.push(1);
  print(stack);
  stack.push(-24);
  print(stack);

  final g = stack.pop();
  print('$a: $stack');
  final h = stack.pop();
  print('$h: $stack');
  final j = stack.pop();
  print('$j: $stack');
  final k = stack.pop();
  print('$k: $stack');

  final m = some<String, double>('Legasy', 5.4);
  print(m);
}
