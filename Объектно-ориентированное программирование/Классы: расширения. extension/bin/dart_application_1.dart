import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  final a = 4;
  final b = '3';
  final x = '4 pauk';
  a.toDouble();
  final l = x.toDouble();
 final c = b.toDouble();
 print(c);
print(l);
}
extension StringToDouble on String{
  double? toDouble(){
return double.tryParse(this);
  }
}
