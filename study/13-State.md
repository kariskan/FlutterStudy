State
=
- State는 UI가 변경되도록 영향을 미치는 데이터이다.
- 즉, App의 상태를 바꾸는 모든 행위가 데이터이다.

Stateless widget
--
- State가 변하지 않는 위젯 -> Stateless widget이 가지고 있는 데이터는 변하지 않는다.<br>
즉, 한 번 지정된 레이아웃, 컬러, 텍스트 정보 등의 데이터는 위젯 자체가 rebuild 되지 않는 한 변하지 않는다.

tree
--
- widget tree: 하나의 설계도로, 순서를 가지고 UI를 그리도록 하는 것이다.
- Element tree: widget tree와 Render tree를 연결하며 flutter가 자동으로 widget tree에 근거해서 생성을 해준다.
- Render tree: 직접적으로 스크린에 그림을 그려주는 역할을 한다.<br><br>

- Element tree의 요소와 widget tree, Render tree의 요소 각각은 1:1 대응이다.

<img width="325" alt="1" src="https://user-images.githubusercontent.com/73534426/124922018-03b44880-e034-11eb-9580-6ecea7da7ac1.PNG"><br>
출처: 유튜브 코딩셰프

Hot reload 과정
--
<img width="378" alt="2" src="https://user-images.githubusercontent.com/73534426/124922086-1cbcf980-e034-11eb-99c2-1bd206f8ef8c.PNG"><br>
출처: 유튜브 코딩셰프

Stateful widget
--
- Stateless widget과의 결정적인 차이점은 내부에 State라는 또 다른 클래스를 가진다.<br>
즉, 두 개의 클래스가 결합이 되어서 Stateful widget을 만든다.
- build method는 State 클래스가 가지고 있다.<br><br>

Stateful widget이 rebuild 되는 2가지 경우
1. Child 위젯의 생성자를 통해서 새로운 데이터가 전달될 때
2. Internal state가 바뀔 때

13.dart
--
출력을 담당하는 Text위젯은 Stateless widget이다.<br>
build method를 호출해 줄 수 있는 method는 setState method인데, 역할에는 2가지가 있다.
1. 매개변수로 전달된 함수를 호출
2. build method를 호출
따라서 버튼이 클릭될 시 호출되는 onPressed method에 setState method를 사용한다.
