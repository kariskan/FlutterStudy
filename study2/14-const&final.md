const와 final의 특징
==

|구분|공통점|차이점|
|------|--------|--------|
|const|한번 변수에 설정한 값은 다시 재 설정을 할 수 없다.|컴파일 타임에 상수를 결정한다.|
|final|..|런타임시에 상수를 결정한다.|


예제
==
```dart
final DateTime final = DateTime.now();
  print(final);
.........
const DateTime const = DateTime.now();
  print(const);

```

위 코드를 실행할 경우 ```final```의 경우는 정상적으로 출력이 되지만 ```const```의 경우는 에러가 출력된다.

예제 설명
--
```dart
const DateTime const = DateTime.now();
  print(const);
```
위 코드는 ```const```는 컴파일 시에 상수를 결정하기 때문에 런타임 코드에서 코드가 실행되어야 알 수 있는 ```DateTime.now()```의 값을 알 수 없기 때문에 오류가 발생한다.

```dart
final DateTime final = DateTime.now();
  print(final);
```
반대로 ```final``` 의 경우에는 런타임에서 값이 결정되기 때문에 ```DateTime.now()```의 값을 가져올 수 있어 정상적으로 출력이된다.

const와 final을 사용하는 이유
==
* final과 const는 변하지 않는 변수에 지정하는 변수 유형이다. 
* 코드에서 변수를 다른 값으로 변경할 경우에 컴파일 전 에러를 확인할 수 있다. 
* 어떤 변수인지 식별이 용이하여 코드를 정리된 구조로 작성할 수 있다.
