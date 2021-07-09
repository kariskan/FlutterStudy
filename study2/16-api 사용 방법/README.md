API: Application Programming Interface
==

**api**란 응용 프로그램에서 사용할 수 있도록, 운영체제나 프로그래밍 언어가 제공하는 기능을 제어 할 수 있게 만든 인터페이스를 말한다.



사용방법
--
**나의 현재 위치를 얻어오는 api인 ```geolocator``` 사용을 예시로 들었다.**
[<참고 문서>](https://pub.dev/packages/geolocator)

1. 해당 api를 pubspec.yaml에 추가하여 설치한다.
 
```dart
dependencies:
  geolocator: ^7.2.0+1
```
2. import 해준다.

```dart
import 'package:geolocator/geolocator.dart';
```

3. 코드를 추가한다.

```dart
Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
```

주의사항
--

위치정보를 사용할려면 반드시 사용자의 동의를 얻어야한다.

1. andriod의 경우 Usage 항목에서 
```android/app/src/profile/AndroidManifest.xml``` 경로의 파일에 아래의 소스를 추가시켜 준다.
```dart
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```
2. ios의 경우 Usage 항목에서
```ios/Runner/Info.plist``` 경로의 파일에 아래의 소스를 추가시켜 준다.
```dart
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to location when open.</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>This app needs access to location when in the background.</string>
```










