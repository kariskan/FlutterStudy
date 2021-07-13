Future&async&await
=
Synchronous 방식
--
- 오직 한 가지 목적만을 가지고 순서대로 해야할 일 한 가지만 하는 것<br>
즉, 코드에 시간이 걸리던 말던 순서대로 실행한다.

Asynchronous 방식
--
- 동시에 여러가지 일을 하는 것, 추구하는 일이 다를 수 있고, 동시에 일어나지 않을 수도 있다.
<hr>
flutter에 사용되는 dart는 싱글 스레드(프로세스 내에서 실행되는 흐름의 단위)로 운영되는 언어이다.<br><br>
여기서 flutter가 앱을 실행시키는 순간, isolate 라고 하는 새로운 스레드 프로세스가 생성되고 즉시 작업을 시작한다.<br><br>

스레드가 생성되는 순간, 3가지 작업을 실행한다.
1. FIFO 방식으로 MicroTask와 Event 준비
2. main 함수 실행
3. Event loop 실행

<br>
외적인 이벤트가 발생하면 이벤트와 관련된 코드들이 이벤트 큐에 등록된다(FIFO방식으로).<br>
이 때, Future 나 Stream 도 이벤트 큐에 등록되고 Event loop 에 의해 처리된다.

Future 클래스
--
비동기 작업을 할 때 사용하고, 미래에 어느 시점에 완성되어 데이터 또는 에러를 반환한다.<br><br>
Future 클래스 동작 방식
1. dart에 의해서 Future 객체가 내부적인 배열에 등록된다.
2. Future 관련해서 실행되어야 하는 코드들이 이벤트 큐에 등록된다.
3. 불완전한 Future 객체가 반환된다.
4. Synchronous 방식으로 실행되어야 할 코드를 먼저 실행한다.
5. 최종적으로 실제적인 data 값이 Future 객체로 전달된다.


async
--
- 메서드를 통해서 나오는 결과물은 Future
- await 키워드를 만날 때까지 Synchronous 방식으로 코드 처리
- await 키워드를 만나면 Future 가 완료될 때까지 대기
- Future가 완료 되자마자 그 다음 코드들을 실행

await
--
- 작업이 처리될 때까지 기다리라는 의미이다.

<hr>

```dart
void main(){
  print('Before the Future');
  Future((){
    print('Running the Future');
  }).then((_){
    print('Future is complete');
  });
  print('After the Future');
}
```
1. ```print('Before the Future');``` 실행
2. Future 을 만나면 Asynchronous 방식으로 처리되는 이벤트이기에, 이벤트 큐에 관련 코드인 ```print('Running the Future');``` 을 등록한 후 나중에 처리하기 위해 이 부분은 건너뛴다.
3. then 역시도 Future 가 처리된 후에 실행되어야 하므로 건너뛴다. 그러나 then 은 이벤트가 아니므로 이벤트 큐에 등록되는 것은 아니다.
4. ```print('After the Future');``` 실행
5. Synchronous 방식으로 실행되어야 할 코드가 더 이상 없으므로 이벤트 큐에서 Future 관련 코드를 가져와서 실행한다.
-> ```print('Running the Future');``` 실행
6. then 함수 실행 -> ```print('Future is complete');``` 실행

<hr>

```dart
String createOrderMessage()
{
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder(){
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Large Latte',
  );
}

void main(){
  print('Fetching user order...');
  print(createOrderMessage());
}
```
위 코드는 main에서 createOrderMessage() 함수가 호출되는 과정에서 order 변수에 fetchUserOrder() 함수의 리턴 값이 할당 되어야 하는데
fetchUserOrder() 함수의 리턴값에는 2초를 기다려야 하기 때문에, null 값이 반환된다.
--> async 가  필요하다.

<hr>

```dart
Future<String> createOrderMessage() async
{
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder(){
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Large Latte',
  );
}

void main() async{
  print('Fetching user order...');
  print(await createOrderMessage());
}
```
위 코드에서 await 키워드는 fetchUserOrder() 함수의 실행이 끝날 때까지 기다렸다가 order 변수에 값을 할당하기위해 사용한다.<br>
main 함수 역시도 비동기 방식으로 처리되는 방식이다.<br>
createOrderMessage() 역시 await 키워드를 붙여준다.

async는 Future 자체를 대신하는 것이 아니라 비동기 방식으로 실행되는 함수라는 것을 dart에 알려주는 역할을 한다.<br>
그리고 await 와 함께 미래에 어느 시점에 전달 될 값을 기다린다.<br>
Future는 하나의 객체로써 객체가 생성되는 순간에는 미완성으로 존재하다가 미래의 어느 시점에 데이터를 전달받은 온전한 객체가 되거나 데이터에 문제가 생긴다면 에러를 반환하는 객체가 된다.

```dart
void main() async {
  methodA();
  await methodB();
  await methodC('main');
  methodD();
}

methodA(){
  print('A');
}

methodB() async {
  print('B start');
  await methodC('B');
  print('B end');
}

methodC(String from) async {
  print('C start from $from');

  Future((){
    print('C running Future from $from');
  }).then((_){
    print('C end of Future from $from');
  });

  print('C end from $from');
}

methodD(){
  print('D');
}
```

1. ```methodA();``` 실행 -> ```print('A');``` 실행
2. ```await methodB();``` -> B가 끝날 때 까지 이하의 코드는 실행하지 않는다.
3. ```print('B start');``` 실행
4. ```await methodC('B');``` -> C가 끝날 때 까지 이하의 코드는 실행하지 않는다.
5. ```print('C start from B');``` 실행
6. Future 을 만나고, 이벤트 큐에 등록된 후 Synchronous 한 코드인 ```print('C end from B');```가 존재하므로 먼저 실행한다.
7. ```print('B end');``` 실행
8. ```await methodC('main');``` -> C가 끝날 때 까지 이하의 코드는 실행하지 않는다.
9. ```print('C start from main');``` 실행
10. Future 을 만나고, 이벤트 큐에 등록된 후 Synchronous 한 코드인 ```print('C end from main');```가 존재하므로 먼저 실행한다.<br>
이로써 이벤트 큐에는 2개의 Future 관련 코드가 존재한다.
11. ```methodD();``` 실행 -> ```print('D');``` 실행
12. 더 이상 Synchronous 하게 동작될 코드가 존재하지 않으므로 이벤트 큐에서부터 순차적으로 처리한다.
13. ```print('C running Future from B');```와 ```print('C end of Future from B');```를 실행한 후
14. ```print('C running Future from main');```와 ```print('C end of Future from main');```를 실행한다.
