/**
 * Optional Positional Parameter
 * 특정 파라미터를 입력하지 않게 하고 싶다면
 * 파라미터에 []를 씌우고 default 값을 주면 된다.
 * 아래 방법보다는 named parameter를 주로 더 사용되어진다.
 */

String sayHello(
  String name, 
  int age, 
  [String? country = 'korea']) =>
    'Hello $name, you are $age years old from $country';

void main(){
  var results = sayHello('kbs', 25);
  print(results);
}
