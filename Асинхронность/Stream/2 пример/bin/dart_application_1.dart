import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'dart:async';

Stream<int>? stream;
StreamSubscription<int>? subscription;

void main() {
  print('one');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => (tick));
  print('two');
  subscription = stream?.listen((event) {
    print(event);
  });
  Future.delayed(Duration(seconds: 5), () {
    subscription?.pause();
  });
  Future.delayed(Duration(seconds: 10), () {
    subscription?.resume();
  });
   Future.delayed(Duration(seconds: 15), () {
    subscription?.cancel();
  });
}
