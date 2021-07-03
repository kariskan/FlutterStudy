코드 리팩토링을 통한 버튼구현
--

목표
--
코드 리팩토링을 통하여 간결하게 코드를 구현할 수 있다.

결과화면
--

![스크린샷 2021-07-04 오전 1 19 11](https://user-images.githubusercontent.com/74492426/124360784-9d5fac80-dc66-11eb-9c0a-4247b4ca29ab.png)


어려웠던 점
--

```dart
class MyButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  MyButton(
      {required this.image,
      required this.text,
      required this.color,
      required this.radius,
      required this.onPressed});
 ```
- flutter가 2.0으로 업데이트 됨에 따라서 기존의 매개변수 코드를 사용할 수 없게 되었다. (구 버전의 코드를 사용했다가 많은 삽질을 했다.)

해결방안: [참고](https://github.com/dkswnzz/Flutter-Study/tree/main/study2/4-dart_basic)
