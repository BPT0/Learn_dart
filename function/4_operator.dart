/**
 * ?? : 좌항이 null 이면 우항을 리턴
 * ??= : 좌항의 값이 null이라면 우항의 값을 할당 
 */

String captialzeName(String? name){
  if(name != null){
    return name.toUpperCase();
  }
  return 'ANON';
}

String captialzeName2(String? name) => 
  name != null ? name.toUpperCase() : 'ANON';

String captialzeName3(String? name) => 
  name?.toUpperCase() ?? 'ANON';

void main(){
  String? name;
  name ??= 'kbs';
  name = null;
  name ??= 'another';

  // captialzeName('kbs');
  // captialzeName3(null);
}