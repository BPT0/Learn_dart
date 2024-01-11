// dart는 널안정성을 지원하기 때문에
// named 파라미터 사용방법: 기본변수를 드레그해 준괄호로 감싸준다.
// named 파라미터 사용시 기본값으로 초기화해야한다.
String sayHello1({String name = 'anon', int age=0, String country='world'}){
  return "Hello $name, you are $age, and you come from $country";
}

// 아래와 같이 파라미터 앞에 required를 붙이면 
// 변수를 항상 가져야만 한다는 걸 
// 컴파일 단계에서 알게됨
String sayHello2({
  required String name, 
  required int age, 
  required String country,
}){
  return "Hello $name, you are $age, and you come from $country";
}

void main(){
  // named parameter를 사용시 순서는 중요하지 않다
  sayHello1(
    age: 25,
    name: 'kbs', 
    country: 'korea'
  );

  sayHello2(
    age: 25,
    name: 'kbs', 
    country: 'korea',
  ); // 위와 같이 변수값을 입력하지 않을시 default 값 출력
}