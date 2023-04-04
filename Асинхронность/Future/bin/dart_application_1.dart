import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:test/test.dart';

void main(){
  print('1');
  print('2');
  print('3');
var waitFuture = Future<Object?>.delayed(Duration(seconds: 1));
waitFuture.then((_) => print('4'));
  print('5');
  print('6');
  print('7');
  print('8');
}
