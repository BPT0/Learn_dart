// => (fat arrow) : 이후 문장을 즉시 리턴한다 

// api를 부르고 계산후 리턴을 하는 복잡한 함수의 경우
// 아래 코드 스타일 사용
void sayHello(String name){
  print("Hello $name nice to meet you");
}

// 리턴만하는 간단한 함수를 작성할 때
// 줄바꿈을 해도 무관함
void sayHello1(String name) => 
  print("Hello $name nice to meet you");

// 위 두 함수는 같은 기능을 한다.

void main(){
  sayHello('kbs');
  sayHello1('kbs');
}