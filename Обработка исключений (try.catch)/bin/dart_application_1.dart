import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:math';
import 'dart:ffi';
import 'dart:convert';

// double div(String a, String b) => int.parse(a) / int.parse(b);

class IncorrectIntString {
  final String inccorrectString;
  IncorrectIntString(this.inccorrectString);
  @override
  String toString() {
    return 'Нельзя преобразоваить строку в инт. Некоректная строка "$inccorrectString".';
  }
}

class DivsionByZero {
  @override
  String toString() {
    return 'Произошло деление на 0';
  }
}

double? div(String a, String b) {
  final aa = int.tryParse(a);
  final bb = int.tryParse(b);
  if (aa == null) {
    throw IncorrectIntString(a);
  }
  if (bb == null) {
    throw IncorrectIntString(b);
  }

  if (bb == 0) {
    throw DivsionByZero();
  }

  return aa / bb;
}

void main() {
  try {
    final a = div('4', 'wee');
    final b = a! + 6;
    print(b);
  } catch (error) {
    print(error);
  } finally {
    print('Эта строка будет работать несмотря на ошибки.');
  }
}
