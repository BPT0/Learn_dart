enum Team { blue, red }

mixin Strong{
  final double strengthLevel = 1500.99;
}

mixin QuickRunner{
  void runQuick(){
    print("ruuuun!");
  }
}

mixin Tall{
  final double height = 1.99;
}

// with를 사용하여 다른 클래스의 프로퍼티와 메소드를 긁어옴
class Player1 with Strong, QuickRunner, Tall{
  final Team team;

  Player1({
    required this.team,
  })
  // 상위 클래스의 파라미터를 사용하기 위해 생성자 호출
  // 파라미터의 속성에 맞춰서 생성자를 호출해 주면 된다.

  void sayHello(){
    print("and I play for $team");
  }
  
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player1(
    team: Team.red,
  );
  player.runQuick();
  player.sayHello();
}