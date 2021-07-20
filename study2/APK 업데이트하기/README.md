업그레이드 앱 배포하기
==

구글 플레이에 앱 배포 후 코드 수정 으로 ```bundle```  파일 혹은 ```apk``` 파일을 업데이트 시키는 경우.

pubspec.yaml
--

```dart
version: 1.0.1+2
```
수정할 때마다 +1씩 늘려줘야 한다.

android/app/biild.gradle
--

```dart
def flutterVersionCode = localProperties.getProperty('flutter.versionCode')
if (flutterVersionCode == null) {
    flutterVersionCode = '2'
}

def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
    flutterVersionName = '1.0.1'
}
```

```flutterVersionName``` 은 구글플레이 상에서 이용자들에게 보여지는 버전을 말한다.
```flutterVersionCode``` 은 ```pubspec.yaml``` 과 마찬가지로 수정할 때마다 +1씩 늘려줘야 한다.

android/local.properties
--
```dart
flutter.buildMode=release
flutter.versionName=1.0.1
flutter.versionCode=2
```

마찬가지로 ```biild.gradle``` 와 ```pubspec.yaml``` 파일과 일치시켜 적어준다.














