Splash
--

Flutter 앱을 실행하면 개발한 첫번째 페이지가 생성되어 출력되기 전에 1초 정도 하얀색 화면이 출력된다. 
- 우선 앱 실행 초기에 잠시 출력되는 스크린을 네이티브 스플래쉬(Native Splash) 스크린 이라고 한다.
- Flutter는 멀티 플랫폼을 지원하는 크로스 플랫폼 이지만 실제 안드로이드나 Ios의 입장에서 보면 각 플랫폼의 네이티브 앱이 먼저 실행된 후, Flutter 앱으로 점프하는 방식이다.
- 개발한 Flutter 앱이 실행되기 전에 각 플랫폼의 네이티브 스크린이 잠시 출력되게 되면서 발생하는 문제다.

![img](https://user-images.githubusercontent.com/74492426/129432772-e3f42e80-dcff-4166-a9b6-e36f9e431a16.gif)

해결방법
--
기본 네이티브 스플래쉬 스크린을 앱의 스타일에 맞게 커스터마이징 하는 것이다. 이미 이를 지원하는 플러그인이 존재한다.

[pub.dev 문서](https://pub.dev/packages/animated_splash_screen)

```dart
animated_splash_screen: ^1.1.0
```

```dart
import 'package:animated_splash_screen/animated_splash_screen.dart';
```

```dart
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Icons.home,
          nextScreen: MainScreen(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.blue
        )
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}
```














