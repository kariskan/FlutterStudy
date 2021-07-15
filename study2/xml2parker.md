xml2parker 패키지란?
==

- ```xml``` 형식으로 받은 데이터를 ```json```으로 변환해주는 라이브러리이다.
- [공식문서](https://pub.dev/packages/xml2json)

install
--

```dart
xml2json: ^5.3.1
```
import
--
```dart
import 'package:xml2json/xml2json.dart';
```

example
--
```dart
final getXmlData = response.body; //xml 데이터를 받아온다.
print(getXmlData);  //xml데이터를 잘 받아왔는지 확인.
final Xml2JsonData = Xml2Json()..parse(getXmlData); //json으로 변환
final jsonData = Xml2JsonData.toParker(); //그냥 령식 옵션
print(jsonData);  //json데이터로 잘 변환되었나 확인.
```
