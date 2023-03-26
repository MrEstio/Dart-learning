import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:io';
 import'dart:math';
 
void main() {
print('Привет, выбери любой цвет!');
print('[W] - White');
print('[R] - Red');
print('[G] - Green');
print('[B] - Blue');
print('[P] - Purple');
while (true) {
String playerMove = Choise();
print(playerMove);
 if (playerMove == "White") {
      return;
    }
}
}

String Choise(){
var selection = stdin.readLineSync();
  print('Вы выбрали - $selection');
switch(selection){
  case "W":
    return "Старание — мать успеха.";
  case "R":
    return "Уникальность и неповторимость — неотъемлемая часть успеха.";
  case "G":
    return "Настойчивость — очень важный элемент успеха. Если вы достаточно долго стучитесь в двери, вы обязательно кого-то разбудите";
  case "B":
    return "Успех всегда оправдывает смелость.";
  case "P":
    return "Если ты хочешь добиться цели, нужно каждый день хотя бы немножко к ней продвинуться.";
default:
return 'White';
  }
}