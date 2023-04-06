import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:async';

Stream<int>? stream;

void main() async {
  print('one');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => (tick)).asBroadcastStream();
  print('two');
  await for (var item in stream!) {
    print(item);
  }
  print('three');
  await for (var item in stream!) {
    print(item);
  }
}
