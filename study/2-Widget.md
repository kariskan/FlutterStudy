Widget
========
Widget이란?
------------
1. 독립적으로 실행되는 작은 프로그램
2. 주로 바타오하면 등에서 날씨나 뉴스, 생활정보 등을 보여줌
3. 그래픽이나 데이터 요소를 처리하는 함수를 가지고 있음

플러터 상에서 위젯은?
---------------------
1. UI를 만들고 구성하는 모든 기본 단위 요소(텍스트, 아이콘, 이미지 등등 모든 것)
2. 눈에 보이지 않는 요소들까지 위젯(센터, column, padding 등등)
3. 모든것이 위젯(앱 그자체까지)

위젯의 종류
------------
1. Stateless Widget
Stateless => 이전 상호작용의 어떠한 값도 저장하지 않음(상태가 없는 정적인 위젯)
-스크린상에 존재만 할 뿐 아무것도 하지 않음
-어떠한 실시간 데이터도 저장하지 않음
-어떤 변화를 유발시키는 value값을 가지지 않음

2. Stateful Widget
Stateful => 입력되는 Value값에 의한 상호작용의 상태를 지속적으로 추적하고 보존(계속 움직임이나 변화가 있는 위젯)
-사용자의 interaction에 따라서 모양이 바뀜(텍스트 박스 등) 

3. Flutter Widget tree
- Widget들은 tree 구조로 정리됨
- 한 Widget내에 얼마든지 다른 Widget들이 포함될 수 있음
- Widget은 부모 위젯과 자식 위젯으로 구성됨
- Parent Widget을 Widget Container라고 부르기도 함

실질적으로 MaterialApp 이 전체 앱을 관리
Scaffold Widget : 앱 화면과 기능을 구성하기 위한 빈 페이지를 준비하는 위젯
AppBar Widget : 앱 화면에 가장 상단에 위치하는 위젯
Text : AppBar안에 있는 위젯     


<img src = "https://user-images.githubusercontent.com/73534426/120071346-ccb05600-c0c9-11eb-9b5d-edec7a1bc4ec.JPG" width="300px" height="300px"/><img src = "https://user-images.githubusercontent.com/73534426/120071353-d2a63700-c0c9-11eb-9d1e-6fafaedb6784.JPG" width="300px" height="500px"/>
