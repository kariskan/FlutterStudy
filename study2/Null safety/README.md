Null safefy
==

Flutter가 2.0 버전으로 업데이트 됨에 따라 ```Null safety```가 매우 중요해졌다. 이에 대해 알아보자.

1. 모든 변수는 ```null```이 될 수 없으며, ```non-nullable``` 변수에는 ```null```값을 할당할 수 없다.
2. ```non-nullable```변수를 위한 ```null check```가 필요 없다.
3. "```Class내의 변수"``` 는 반드시 선언과 동시에 초기화를 시켜야 한다.

Null safety 해결하기 [[참고]](https://github.com/dkswnzz/Flutter-Study/tree/main/study2/4-dart_basic)
--

1. 변수에 타입뒤에 ```?``` 붙이기.
```dart
String? name;
```
2. 변수 앞에 ```late``` 붙이기.
```dart
late int age;
```
3. ```non-nullable```에 ```non-nullable``` 를 넣을때 변수명 뒤에 ```!``` 붙이기.
```dart
void main(){
  int x=10;
  int? y;
  y=x;
  int value=y!;
 }
```
4. 메소드에 인자값을 전달할때 타입 앞에 ```required``` 추가하기.
```dart
void main(){
  add(a : 4, b : 1);
}

int  add({required int? a, requeured int? b}){
  int sum = a + b;
  return sum;
}
```
 만약 인자값에 ```null``` 값을 주고 싶다면 아래와 같이 ```null``` 예외처리를 해주어야 한다.
```dart
void main(){
  add(a: null ,b : 1);
}

int  add({required int? a, requeured int? b}){
  if(a == null) return b;
  int sum = a + b;
  return sum;
}
```













