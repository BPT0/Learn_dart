class Player{
  // constructor method의 이름은 class의
  // 이름과 같아야 한다

  // final String name; -> 상수 값으로 선언해 변수 할당 불가능함
  // late : 선언을 하고 변수의 값은 나중에 초기화 하기
  // kotlin 의 lateinit 과 유사하게 쓰인다고 느꼈다.
  // late String name; 
  // late int xp;

  // Player(String name, int xp){
  //   this.name = name;
  //   this.xp = xp;
  // }

  final String name; 
  int xp;

  // 파라미터를 생성자에서 바로 초기화 하는 방법
  Player(this.name, this.xp,);
  
  void sayHello(){
    // 지역 변수로 동일한 변수가 선언되어 있지 않다면
    // dart에서는 this 사용을 권고하지 않는다.
    print("Hi my name is ${name}");
  }
  
}

void main(){
  var player = Player("kbs", 1500);
  // player의 sayHello method 호출
  player.sayHello();

  var player2 = Player("kbh", 1500);
  // player2의 sayHello method 호출
  player2.sayHello();
}