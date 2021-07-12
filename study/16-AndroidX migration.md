AndroidX migration
=
migration
--
- 한 운영환경으로부터 좀 더 낫다고 여겨지는 다른 운영 환경으로 옮겨가는 것
- AndroidX는 기존의 Android에서 사용하던 다양한 라이브러리를 하나로 통합한 것

migration 과정
--
1. 깃허브 등과 같은 곳으로부터 프로젝트 파일 저장
2. main.dart 에서 get dependencies. get dependencies가 보이지 않을 경우 terminal에서 flutter packages get 입력
3. android폴더 - gradle.properties 파일에서 아래 코드 입력
```
android.useAndroidX=true
android.enablejetifier=true
```
4. android폴더 - build.gradle 파일에서 코틀린 플러그인을 사용하지 않은 경우,
File메뉴 - open - android 폴더 - ok - New window
5. 플러그인 메세지 업데이트
6. Refactor 메뉴 - Migrate to AndroidX - Migrate 진행
