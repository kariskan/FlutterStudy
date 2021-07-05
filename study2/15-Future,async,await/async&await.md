async / await 란 무엇인가
==

```async``` / ```await``` 또한 Dart의 비동기 처리를 위한 것으로 ```Future``` 를 조금 더 용이하게 다루기 위한 키워드이다.

- (1). ```await``` 키워드를 사용한 함수는 무조건 ```async``` 함수 이어야 한다.
- (2). ```async``` 함수는 무조건 ```Future```를 반환해야 한다.

1번 규칙은 별로 어렵지 않은 규칙이다. 

- ```await``` 라는 키워드를 함수 내부에서 사용한다면 아래와 같이 해당 함수 스코프를 알려주는 ```{...}``` 의 앞에 ```async``` 를 적어주기만 하면 된다.

```dart
Future functionName() async {
  ...
  await someFunction();
  ...
}
```

async/await 가 왜 필요할까?
-==

아래의 두 코드를 비교하면 왜 사용하는지 알 수 있다.

<**1번 코드**>

```dart
Future<ProcessedData> createData() {
  return _loadFromDisk().then((id){
    return _fetchNetworkData(id);
  }).then((data){
    return ProcessedData(data);
  })
}
```

- 위와 같은 함수가 있을때, 위 함수는 미래에 ```ProcessedData``` 가 나올 상자인 ```Future<ProcessedData>```를 return 한다.
- 함수의 과정을 살펴보면 먼저 디스크로부터 ```id``` 값을 읽어들이는 ```loadFromDisk()``` 함수가 수행되고, ```id``` 를 읽어들이면 ```_fetchNetworkData()``` 함수에 ```id``` 를 인자로 넣어서 네트워크를 이용해 ```data``` 를 받아온다.
- 그리고 ```data``` 를 다 받아오면 ```ProcessData(data)``` 를 return 한다.

코드가 보기에도 직관적이지 않고 아래의 2번 코드를 살펴보자.

<**2번 코드**>

```dart
Future<ProcessedData> createDate() async {
  final id = await _loadFromDisk();
  final data = await _fetchNetworkData(id);
  return ProcessedData(data);
}
```

위 1번과 같은 코드이지만 2번 코드가 훨씬 더 간결하고 직관적이다.

이러한 간결함 때문에  ```async``` / ```await``` 는 ```Futere``` 을 조금 더 용이하게 사용하도록 도와준다.

async/await는 어떻게 동작하는가?
==

그러면 ```async``` / ```await``` 를 사용해 어떻게 1번 코드와 2번 코드가 동일 한 동작을 하는지 알아보자.

<**2번 코드**>

```dart
Future<ProcessedData> createDate() async {
  final id = await _loadFromDisk();
  final data = await _fetchNetworkData(id);
  return ProcessedData(data);
}
```

<1>
- ```createData()``` 함수가 실행될 때 가장먼저 첫 번째 줄의 ```await``` 키워드가 붙은 ```_loadFromDist()``` 를 수행 할것이다.
- 그러면 함수를 실행하면서 ```await``` 를 보고 '이 함수를 수행하려는 뭔가 다른것들이 필요하겠군.' 이라고 생각하며 일단 이 함수의 수행을 멈춘다. 

<2>
- 그리고 함수를 호출한 곳에 ```Future<ProcessedData>``` 를 return 한다. 
- 그리고는 "이 함수는 비동기적인 처리가 좀 필요하기 때문에 일단  ```ProcessedData``` 가 담길 상자  ```Future<ProcessedData>``` 를 미리 줄테니 나중에 이 함수가 모두 완료되면 ```ProcessedData```가 나올꺼야." 라고 말한다.

<3>
- 해당 함수는 ```await```가 붙은 ```_loadFromDisk()``` 함수가 끝날 때까지 다음 동작을 수행하지 않고 가만히 기다린다.
- 마치 상자에서 값이 나와야 ```then``` 함수를 수행 할 수 있었던 것과 같다.

<4>
- ```_loadFromDisk()``` 함수의 수행이 완료되면 그 다음 줄을 수행한다. 이번에도 ```await``` 가 붙은 함수이다. 
- 마찬가지로 ```_fetchNetworkData(id)``` 가 수행완료 될 때까지 함수를 더 이상 진행하지 않고 기다린다.

<5>
- 2번째 줄도 완료되면 이제 ```return ProcessedData(data)``` 가 수행된다.
- 이 return 을 통해 ```createData()``` 를 호출한 녀석이 받은 상자에서 ```ProcessedData``` 가 나오게 된다.

<정리>

1.  ```await``` 를 만나면 함수를 잠시 멈추고 함수를 호출한 곳에 ```Future``` 를 return 한다.
2.  ```await``` 가 붙은 동작이 완료되기 전까지 함수를 더 이상 진행하지 않는다.
3.  return 을 통해 1번에서 주었던 ```Future``` 에서 return 값이 나오게 한다.

<주의>
- **1번에서 받은 return 값인 ```Future``` 가 3번에서 return 할 값으로 바뀌는 것이 아니다.**




async/await 언제 사용할까?
==

<**3-1번 코드**>

```dart
Future<String> helloWorld() {
  // 3초 후에 Future<String> 에서 "Hello World" 가 나옵니다
  return Future.delayed(Duration(seconds: 3), () {
    final hello = "Hello World";
    print(hello);
    return hello;
  });
}

void main() {
  final future = helloWorld();
  print(future);
}
```
이 코드의 특징은 ```Future``` 을 return 하는 함수를 호출하지만 ```await``` 키워드를 사용하지 않은 것이다.
- ```main()``` 함수에서 ```Future<String>``` 을 받아 ```Future``` 에 저장하고 출력한다.

이 코드의 실행결과는 다음과 같다.
```dart
Instance of 'Future<String>'
Hello World
```

- 첫번째 줄인 ```Instance of 'Future<String>'``` 은 ```main()``` 함수의 ```print(future)``` 에서, ```Hello World``` 는 ```helloWorld()``` 함수에서 출력된 것이다. 
- 어째서 ```future``` 의 출력순서가 첫 번째인지, ```Instance of 'Future<String>' ``` 으로 출력 되는지 알아보자.

1. 출력 순서가 첫번째인 이유는 ```await``` 키워드를 사용하지 않았으며, ```then()``` 함수를 사용하지 않았으므로 **비동기적**으로 처리되기 때문에 3초가 되기전에 ```print(future)``` 가 수행된다.
2. 값이 ```Instance of 'Future<String>'``` 인 이유는 강조했다시피 ```Future``` 로 반환된 값은 상자가 열렷을 때 나오는 값으로 바뀌는 것이 아니기 때문이다. 
3. ```helloWorld()``` 함수의 return 타입은 ```Future<String>``` 이므로 ```future``` 의 타입은 ```String``` 으로 바뀌는 것이 아닌 계속 ```Future<String>``` 이다.

<**3-2번 코드**>
 
```dart
Future<String> helloWorld() {
  return Future.delayed(Duration(seconds: 3), () {
    final hello = "Hello World";
    print(hello);
    return hello;
  });
}

void main() async {
  final future = await helloWorld();
  print(future);
}
```

**위 코드의 특징은 ```Future``` 을 return 하는 함수를 호출할 때, ```await``` 키워드를 사용한 것이다.** ```main()``` 함수에서 ```await``` 키워드를 사용했기 때문에 ```async``` 함수로도 만들어 주었다. 
- 위 코드의 실행 결과는 아래와 같다.

```dart
Hello World
Hello World
```

<**4-1번 코드**>

```dart
Future<String> helloWorld() async {
  return await Future.delayed(Duration(seconds: 3), () {
    final hello = "Hello World";
    print(hello);
    return hello;
  });
}

void main() {
  final future = helloWorld();
  print(future);
}
```

**이 코드의 특징은 ```async``` 함수를 호출할 때, ```await``` 키워드를 사용하지 않은 것이다.** 
- 위 코드의 실행 결과는 다음과 같다.

```dart
Instance of 'Future<String>'
Hello World
```
결과가 이와 같은 이유는 3-1번 코드의 설명과 동일하다.


<**4-2번 코드**>
```dart
Future<String> helloWorld() async {
  return await Future.delayed(Duration(seconds: 3), () {
    final hello = "Hello World";
    print(hello);
    return hello;
  });
}

void main() async {
  final future = await helloWorld();
  print(future);
}
```

**이 코드의 특징은 ```async``` 함수를 호출할 때, ```await``` 키워드를 사용한 것이다.** 
- 위 코드의 실행 결과는 다음과 같다.

```dart
Hello World
Hello World
```
결과가 이와 같은 이유는 3-2번 코드의 설명과 동일하다.

async / await 를 사용하면 더 이상 then 은 필요가 없을까?
==







