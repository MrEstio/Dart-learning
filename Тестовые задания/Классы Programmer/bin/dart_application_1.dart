
import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

class Programmer {
  String university = '';
  String programmlanguage = '';
  var _name;
  String getName(){
return _name;
  }
  void setName(String name) {
    this._name = name;
  }
  int junioryears = 2;
  int get juniordart => junioryears;
  int get juniorjava => junioryears;
  void code() {
    print('Пишет код!');
  }
}

class Backend extends Programmer {
  String university = 'МГУ';
  String programmlanguage = 'C++';
  void whatyearsjun() {
    print('За сколько можно стать джуном в Бекэнде $juniordart');
  }

  void backendcode() {
    print('Пишет Бекэнд');
  }

  void info() {
    print(
        'В каком университете учился: $university, какой язык программирования знает: $programmlanguage.');
  }
}

class Frontend extends Programmer {

  void frontendcode() {
    print('Пишет фронт!');
  }

  void whatyearsjun() {
  }
   set juniordate(int value) {
    junioryears = value;
  }
  void infoyears(){
    print('За сколько можно стать джуном в Фронтэнде $juniordart');
  }
}

class DevOps extends Programmer {  
  void devops() {
    print('Разрабатывает, тестирует, эксплотирует.');
  }
  @override
  void code(){
    print('Решил не писать код, и пойти спать');
  }
}

void main() {
  Backend().whatyearsjun();
  Backend().info();
  
  Frontend().whatyearsjun();
  Frontend().infoyears();
  Frontend front = Frontend();
  front.juniordate = 1;
  print('За сколько можно стать джуном в Фронтенде, если учиться 12 часов в день: ${front.junioryears} год.');

var programmer = Programmer();
programmer.setName('Liliya');
print(programmer.getName());
}
