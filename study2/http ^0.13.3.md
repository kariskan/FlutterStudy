상황
--

```flutter``` 의 ```http```를 사용하려하는데 예제와 동일하게 ```http.get```을 요청했지만 아래와 같은 에러가 발생했다.

```dart
The argument type 'String' can't be assigned to the parameter type 'Uri'.
```

문제파악
--
```http: ^0.13.3``` 으로 버전이 올라가게 되면서, ```Uri```를 사용해야 한다.

해결방법
--

기존 방법
```dart
var response = await http.get('주소');
```
변경된 방법
```dart
var response = await http.get(Uri.parse('주소'));
```
