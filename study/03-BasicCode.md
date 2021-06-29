플러터 앱 페이지 기본 코드와 동작 원리
=======================

flutter material library
------------
flutter material library를 가져와야만, flutter framework의 모든 Widget과 Theme를 사용 가능하다.   
import 'package:flutter/material.dart';   

void main() => runApp(MyApp)
-------------
void main() : 컴파일러에게 시작점을 알려주고,   
runApp(MyApp) : flutter 최상위 함수인 runApp함수를 불러온다.   
runApp 함수는 반드시 Widget을 Argument(인자)로 가져야한다.   
    

MaterialApp Widget
--------
MyApp Widget은 custom Widget이기 때문에, stateless Widget으로 새로운 Widget을 정의한다.   
모든 custom Widget은 또다른 Widget을 return 하는 build 함수를 가지고 있고, material library를 import 했기 때문에,   
container를 Material App으로 바꾼다.   
MaterialApp의 Argument로 title, theme, home 등을 설정하는데 여기서 theme과 home은 각각 또다른 Widget을 Argument로 갖는다.
ThemeData : 앱의 기본적인 디자인 테마를 지정하는 위젯, Argument로 primarySwatch(앱에서 기본적으로 사용할 색상 견본)을 갖는다.   
home : 앱이 정상적으로 실행되었을 때 가장 먼저 보여지는 경로, 보통 Scaffold Widget을 Argument로 갖는다.

Scaffold Widget
----------
Scaffold Widget : 앱 화면에 다양한 요소들을 배치하고 그릴 수 있도록 도와주는 빈 도화지 같은 역할   
Scaffold Widget은 appBar와 body를 Argument로 갖는데, 여기서 body Widget은 Scaffold Widget 내에서 가장 중요한 요소로 작용한다.   
appBar위젯에서는 title속성을 Text Widget으로 설정했는데, MaterialApp과는 다르다.   
MaterialApp에서의 title : 말 그대로 앱을 총칭하는 이름   
AppBar에서의 title : 화면 AppBar, 즉 상단 등에 출력되는 타이틀   

기타 Widget
--------
Column Widget : 자신의 Widget 내에 모든 요소들을 세로로 배치함   
Center Widget : 중앙 정렬
