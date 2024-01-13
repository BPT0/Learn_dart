class Player{
  String name = 'kbs';
  int xp = 1500;
  
  void sayHello(){
    // 지역 변수로 동일한 변수가 선언되어 있지 않다면
    // dart에서는 this 사용을 권고하지 않는다.
    print("Hi my name is ${name}");
  }
  
}

void main(){
  // dart는 new를 생략할 수 있다.
  var player = Player();
  print(player.name);
  // name value change
  player.name = 'kang';
  print(player.name);

  // dart method 호출
  player.sayHello();
}