class Player {
  final String name;
  int xp;
  String team;
  int age;

  // named 파라미터 사용시 nullable 문제 해결 필요
  // 1.기본 옵션값 부여
  // 2. required 를 파라미터 앞에 적기
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  void sayHello() {
    print("Hi my name is ${name}, and ${age} this is my ${team} and ${xp}");
  }
}

void main() {
  // 문제점
  // 1.호출부분에서 파라미터의 정해진 position에 맞춰 호출해야함
  // 호출 부분에서 어떤 파라미터를 부르는지 잘 알수 없음
  var player = Player(name: "kbs", xp: 1500, 
    team: 'red', age: 12);
  player.sayHello();
  // named parameter로 더 편하게 호출 가능함
}
