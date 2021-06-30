Collection
--
* 데이터들을 모아서 가지고 있는 자료구조

Generic
--
* Collection이 가지고 있는 데이터들의 데이터 타입을 지정


Code
--
```dart
void main(){
 List<String>names = List();  //List<dynamic>names = List();
 names.addAll(['james','John','Tom']);
 print(names);
 }
 ```
 Collection을 구현할 때 Generic 타입은 안정성을위해 var,dynamic을 가급적 사용하지 말고 구체척인 타입으로 지정.
