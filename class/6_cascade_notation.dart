class Player {
  String name;
  String team;
  int xp, age;

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
  // nico.을 인스턴스를 호출 할때마다 적어야 한다.
  // 인스턴스 선언후 ; 적지않으면 이후 문작에는
  // ..으로 nico. 입력을 대체할 수 있다.
  // 이로 인하여 적은 코드로 쉽게 인스턴스 초기화가 가능하다.
  // 코틀린의 scope 함수와 유사하게 사용되는 것 같다.
  // 인스턴스 초기화 뿐만 아니라 인스턴스 : 뒤에 위 방식이 사용 가능하다.
  // 메소드도 호출 가능하다!
  var nico = Player(age: 15, xp: 1200, team: 'red', name: 'kbs');
  var potat = nico
    ..name = 'las'
    ..xp = 120000
    ..team = 'blue'
    ..sayHello();
}
