import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

mixin Beast{
  void say(){
    print('Its say');
  }
}
mixin Mehanism{
  void repair(){
    print('Its repair');
  }
}
mixin Fly{
  void fly(){
    print('Its Fly');
  }
}


class Duck with Beast,Fly{}

class Airoplane with Mehanism, Fly{}
void main() {
Duck().fly();
Duck().say();
Airoplane().fly();
Airoplane().repair();
}
