Future란 무엇인가
==

Dart에서 Future는 자바스크립트의 Promise에 대응되며, Future와 Promise는 모두 싱글스레드 환경에서 비동기 처리를 위해 존재한다.
 - JS의 Promise는 특정 동작의 수행이 완료되면, 다음 동작을 수행하겠다는 **약속**
 - Dart의 Future는 지금은 없지만 **미래**에 요청한 데이터 혹은 에러가 담길 그릇
 
```dart
Future<int> 라는 상자가 있는데, 이 상자는 지금은 닫혀있다. 하지만 이 상자를 준 함수가 말한다.

"지금은 그 상자가 닫혀있지만, 나중에 열리면 int 나 error 가 나올거야. 두 경우를 모두 대비해 줘." 

이 상자를 받은 변수는 상자로부터 int 가 나올 때를 대비해 then 메소드를, Error 가 나올 경우를 대비해 CatchError 메소드를 준비해야 한다.
```

이제 코드와 함께 살펴보자.

1-1번 코드
--
```dart
import 'dart:async';

Future<int> futureNumber() {
  // 3초 후 100이 상자에서 나옵니다
  return Future<int>.delayed(Duration(seconds: 3), () {
    return 100;
  });
}

void main() {
  // future 라는 변수에서 미래에(3초 후에) int가 나올 것입니다
  Future<int> future = futureNumber();

  future.then((val) {
    // int가 나오면 해당 값을 출력
    print('val: $val');
  }).catchError((error) {
    // error가 해당 에러를 출력
    print('error: $error');
  });

  print('기다리는 중');
}
```

- ```futureNumber``` 함수는 3초가 되기 전까지는 닫혀있다가 3초가 되면 100이 나오는 상자 ```Future<int>``` 를 return 한다.

- ```main``` 함수에서 ```future``` 변수에 해당 함수의 return값을 저장한다. 여기서 주의해야 할 점은 **3초후에 ```future```는 ```int```로 바뀌지 않는다.**

- **```future``` 는 계속해서 ```Future<int>``` 이다. 그렇기 때문에 ```future``` 가 100으로 바뀌는 것이 아니다.**


그렇다면 어떻게 Future<int> 에서 나오는 값을 다룰까?

- 바로 ```then``` 함수로 다룰 수 있다. (위 코드에서의 ```future.then(...)```)
- ```then```내부 함수에서 ```val```에 ```Future<int>``` 상자가 열렸을 때 나오는 값이 들어 갈 것이므로 ```val:100``` 이라고 출력된다.

위 코드를 수행했을 때 다음과 같은 출력이 나온다.

```dart
기다리는 중
val: 100
```
어째서 ```var: 100``` 이 아니라 ```기다리는 중``` 이 먼저 출력이 되는 걸까?

이 부분을 설명하기 위해 ```동기``` 와 ```비동기``` 에 대해 알아야한다.
 > - **동기**: C언어, C++과 같이 모든 동작을 차례대로 완료 후 수행하는 것.
 > - **비동기**: 어떤 동작이 완료 되지 않아도 다음 동작을 수행하는 것.
  
**비동기** 처리는 보통 디스크로부터 읽거나 쓸 때, 네트워크 통신처럼 다소 오랜 시간이 필요한 경우에 유용하다. 
 > - 해당 동작들이 완료될 때까지 기다리지 않고도 다른 동작을 수행할 수 있기 때문이다.
 > - ```Future``` 는 비동기를 위해 존재한다.
  
다시 돌아와 위 코드에서 ```main``` 함수의 가장 마지막 줄에 ```print```가 있지만, 100줄의 코드였다고 가정해보자. 
 > - **동기적**으로 처리했을 경우 ```Future<int>``` 에서 값이 나올 때까지 100줄의 코드는 동작하지 않고 정지해 있을 것이다. (심한 낭비)
 > - 이러한 낭비를 막고자 **비동기적** 으로 처리하는 것이다. (```Future<int>``` 에서 값이 나오지 않아도 계속해서 동작을 수행할 수 있도록)
 > - 때문에 위 코드에서 3초가 지나 ```future``` 의 ```then```이 동작하기 전에 계속해서 코드를 수행하기 때문에 가장 밑의 ```print```가 먼저 수행된다.

 이번에는 ```error```가 나오는 ```Future``` 를 살펴보자.
  
 1-2번 코드
 --
 ```dart
  import 'dart:async';

Future<int> futureNumber() {
  // 3초 후 Error!가 상자에서 나옵니다
  return Future<int>.delayed(Duration(seconds: 3), () {
    throw 'Error!';
  });
}

void main() {
  // future 라는 변수에서 미래에(3초 후에) error가 나올 것입니다
  Future<int> future = futureNumber();

  future.then((val) {
    // int가 나오면 해당 값을 출력
    print('val: $val');
  }).catchError((error) {
    // error가 해당 에러를 출력
    print('error: $error');
  });

  print('기다리는 중');
}
```
 
 - 이번에는 ```futureNumber``` 함수에서 ```error``` 가 3초후에 나올 상자 ```Future<int>``` 를 전해주었다.
 - 이번에는 ```catchError``` 함수가 수행될 차례이다. ```then``` 함수와 마찬가지로 내부의 함수가 수행될 것이다.
 - 위 코드의 경우 ```error```에 ```Future<int>``` 상자가 열렸을 때 나올 ```Error!``` 가 들어갈 것이므로 ```error: Error!``` 가 출력 될 것이다.
  
  위 코드를 수행했을 때 다음과 같이 출력된다.
  
  ```dart
  기다리는 중
  error: Error!
  ```
