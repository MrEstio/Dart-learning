import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:async';

Stream<int>? stream;
StreamSubscription<int>? subscrition;

void main() {
  print('One');
  stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);
  print('Two');
  subscrition = stream?.listen((event) {
    print(event);
  });
  print('Three');
  Future.delayed(Duration(seconds: 10), (){
subscrition?.cancel();
  });
}
