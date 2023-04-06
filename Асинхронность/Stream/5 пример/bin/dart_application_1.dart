import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:async';

StreamController<int> controller = StreamController<int>();
StreamSubscription<int>? subscription;

void main(List<String> arguments) {
  print('one');
  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.add(4);
  controller.add(5);
print('two');
subscription = controller.stream.listen((event) {
  print(event);
});
print('three');
  controller.add(6);
  controller.add(7);
  controller.add(8);
  controller.add(9);
  controller.add(10);
Future.delayed(Duration(seconds: 10), (){
subscription?.cancel();
});

}
