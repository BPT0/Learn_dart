class Player {
  final String name;
  String team;
  int xp, age; // tip. dart는 한줄에 여러개 변수 선언 가능

  // named 파라미터 사용시 nullable 문제 해결 필요
  // 1.기본 옵션값 부여
  // 2. required 를 파라미터 앞에 적기
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  // : 을 사용하여서 Player 클래스를 초기화
  // 매개변수로는 재정의할 파라미터가 들어감
  // team 과 xp의 값은 'blue' 와 0 으로 기본값을 설정
  Player.createBluePlayer({
    required String name, 
    required int age
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is ${name}, this is my ${team} and ${xp}");
  }
}

void main() {
  var player = Player(name: "kbs", xp: 1500, team: 'red', age: 12);
  player.sayHello();

  // 다른 생성자를 만들어 호출
  var player1 = Player.createBluePlayer(
        name: 'kbh', age: 30,
      );
  player1.sayHello();
}
