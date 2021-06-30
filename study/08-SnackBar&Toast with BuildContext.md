SnackBar&Toast with BuildContext
=

BuildContext
---------
구글 flutter 공식문서: A handle to the location of a widget in the widget tree.<br>
-> widget tree 에서 현재 widget의 위치를 알 수 있는 정보<br>
BuildContext는 stateless위젯이나 state 빌드 메서드에 의해서 리턴 된 위젯의 부모가 된다.<br>

SnackBar
--------
- 스낵바를 구현하기 위해서는 Scaffold.of(context) 함수와 showSnackBar() 함수를 불러와야한다.
- 즉, 반드시 Scaffold.of(context) 메소드를 통해서 Scaffold 위치를 참조한 후, 그 다음에 showSnackBar() 메소드 내에서 스낵바를 구현해야 한다.
- 결론적으로 flutter가 Scaffold의 정확한 위치를 참조해서 그곳에 스낵바를 그릴 수 있도록 알려주어야 한다.

Scaffold.of(context)
------------
- 현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라.

<img width="252" alt="깃" src="https://user-images.githubusercontent.com/73534426/123897234-019c1b00-d99e-11eb-983a-299c2af4e2f9.PNG"><br>
현재 그림에서 Scaffold.of(context) 메소드는 Scaffold 위젯을 찾아나서지만, 여기서 context는 MyPage의 context이므로 MyPage부터 위로 Scaffold를 찾게된다. 결국 찾지못하고, Scaffold를 포함하지 않는 context라는 오류메세지를 보내게 된다.
<img width="386" alt="오류" src="https://user-images.githubusercontent.com/73534426/123897371-3c05b800-d99e-11eb-8934-b1162ba94d9f.PNG">

Builder 위젯
----------
context가 무엇이었던 간에 새로운 context로 새로운 위젯을 만든다.   
그래서 builder위젯 밑에 존재하는 Scaffold.of(context) 메소드가 더이상 MyPage의 context가 아니라 Builder 위젯의 context를 사용하게 만든다.   
결과적으로 Scaffold.of(context)메소드가 위젯 tree 상에서 Builder 위젯 위로 거슬러 올라가며 Scaffold 위젯을 찾게된다.   

SnackBar without builder 위젯
----------------
<img width="348" alt="깃2" src="https://user-images.githubusercontent.com/73534426/123897563-8edf6f80-d99e-11eb-8489-409e08240c56.PNG"><br>
Scaffold.of(context) 함수는 MySnackBar 위젯의 context를 전달받고 이에 근거해서 MySnackBar의 위치부터 거슬러 올라가며 위젯을 찾게 된다.

toast
-----
- fluttertoast 라이브러리 사용해야한다.(import 'package:fluttertoast/fluttertoast.dart';)   
- pubspec.yaml 파일 -> cupertino_icons 속성 아래에 fluttertoast: ^7.1.1
- toast 메시지는 스낵바와 달리 위젯 tree와는 상관이 없다.
