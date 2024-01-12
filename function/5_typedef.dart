typedef ListOfInts = List<int>;
/**
 * typedef로 List<int> 자료형을 ListOfInts 로 
 * 선언하여 사용할 수 있음
 * 간단한 데이터의 alias 를 만드는데 사용됨
 * ? 1. typedef 의 유효 범위는? 
 */

List<int> reverseListOfNumbers(List<int> list){
  var reversed = list.reversed;
  return reversed.toList();
}

ListOfInts reverseListOfNumbers2(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}

void main(){
  print(reverseListOfNumbers([1,2,3]));
}