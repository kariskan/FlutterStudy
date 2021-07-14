Xml 파싱하기
==

install 
--
>[참고](https://pub.dev/packages/xml) 에서 최신 버전을 확인한다 

```dart
xml: ^5.1.2
```

import
--
```dart
import 'package:xml/xml.dart';
```


Use
--

```dart
XmlDocument? XmlData;

void getXmlData() async {
    try {
      http.Response response = await http.get(
        Uri.parse(
          '주소',
        ),
      );
      XmlData = XmlDocument.parse(response.body);
      
      final wantData = XmlData!.findAllElements('원하는 값');
      return(XmlData);
    } catch (e) {
      print('url 정보 불러오기 실패');
    }
  }
```

