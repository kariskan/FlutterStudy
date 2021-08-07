1)Xcode 설정
-- 

터미널에서 프로젝트가 있는 다이렉트에서  아래 커맨드 입력.

```dart
open ios/Runner.xcworkspace
```

Runner -> Signing & Capabilities -> Team -> 개발자 계정 추가

<img width="696" alt="스크린샷 2021-08-07 오후 5 06 28" src="https://user-images.githubusercontent.com/74492426/128593458-1e245346-db56-45db-87b9-88705625a17b.png">

2)아이폰 연결
--
- 한 Apple ID당 1주일에 10번까지만 빌드가 가능하다. 
- 테스트 앱 사용 가능기간이 1주이다.  1주일이 지나면 앱이 실행할 수 없는 상태가 되지만, 이 경우에는 다시 설치하시면 된다.
- Apple Pay, Game Center, iCloud, 인 앱 결제, APNS(Push Notification), Wallet 등은 사용할 수 없다.

3)빌드
--
```dart
 flutter run --release
 ```
