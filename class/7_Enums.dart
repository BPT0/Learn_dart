// enum 은 선택의 폭을 좁혀주는 역활을 한다.
// 호출시 매개변수의 값을 적을때 
// enum으로 정의한 Type의 값들을 사용가능하다.

enum Team { red, blue } // team의 red라는 새로운 타입을 만든다
enum XPLevel { beginner, medium, pro }

class Player {
  String name;
  Team team;
  XPLevel xp;
  int age;

  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  void sayHello() {
    print("Hi my name is ${name}, this is my ${team} and ${xp}");
  }
}

void main() {
  var nico = Player(age: 15, xp: XPLevel.medium, team: Team.red, name: 'kbs');
  var potat = nico
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}
