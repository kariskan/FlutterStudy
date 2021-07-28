뒤로가기 버튼 두번 클릭으로 종료하기
--

```dart
//BackButton
class BackButton extends StatefulWidget {
  @override
  _BackButtonState createState() => _BackButtonState();
}
class _BackButtonState extends State<BackButton> {
  DateTime backbuttonpressedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: onWillPop,
        child: Center(
          child: Text('Double Click to exit app'),
        ),
      ),
    );
  }
}
```

```dart
Future<bool> onWillPop() async {
  DateTime currentTime = DateTime.now();

  //Statement 1 Or statement2
  bool backButton = backbuttonpressedTime == null ||
      currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);

  if (backButton) {
    backbuttonpressedTime = currentTime;
    Fluttertoast.showToast(
        msg: "Double Click to exit app",
        backgroundColor: Colors.black,
        textColor: Colors.white);
    return false;
  }
  return true;
  SystemNavigator.pop();
}
```

앱을 종료하기 위한 세 가지 방식
--
```dart
1. Navigator.of(context).pop(true)  //페이지 제거
2. SystemNavigator.pop() // 앱 종료
3. exit(0) //강제종료
```

