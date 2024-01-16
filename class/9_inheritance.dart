class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);
  // 상위 클래스의 파라미터를 사용하기 위해 생성자 호출
  // 파라미터의 속성에 맞춰서 생성자를 호출해 주면 된다.

  @override
  void sayHello() {
    print("and I play for ${team}");
  }
}

void main() {
  var player = Player(team: Team.red, name: 'nico');

  player.sayHello();
}
