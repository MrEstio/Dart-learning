import 'dart:math';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:io';
import 'dart:math';

void main() {
print('Привет играем в камень,ножницы,бумага!');
print('Пиши что ты хочешь выбрать.');
print('[1] - Камень');
print('[2] - Ножницы');
print('[3] - Бумага');


int n = int.parse(stdin.readLineSync()!); // Ввод через консоль
print('Вы выбрали - $n');
if(n == 1){
  print('Камень\n');
}
if(n == 2){
  print('Ножницы\n');
}
if(n == 3){
  print('Бумага\n');
}
else if (n < 1 || n > 3){
  print('Неправильное число! Попробуй снова');
  return;
}

var rand = Random().nextInt(3) + 1; // Рандомит от 1 до 3
print('Противник выбрал: $rand');
if (rand == 1){
  print('Камень');
} 
if(rand == 2){
  print('Ножницы');
}
if(rand == 3){
  print('Бумага');
}

if(rand == n){
  print('\nНичья!');
}
if(n == 1 && rand ==2 || n == 2 && rand == 3 || n == 3 && rand == 1){
print('\nТы победил!');
}
if(n == 1 && rand == 3 || n == 2 && rand == 1 || n == 3 && rand == 2){
print('\nТы Проиграл, попробуй еще раз!');
}
}



