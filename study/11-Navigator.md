Navigator
=
Route
--
- 단순히 스마트폰에서 보여지는 하나의 페이지, 또는 화면
- stack 자료구조를 이용하며 push, pop 메소드를 사용한다.<br><br>

- Route는 반드시 MaterialApp 위젯 아래에 child로 생성되어야 한다.<br>
--> 모든 위젯은 MaterialApp 위젯이 감싸고 있어야 한다.
- 버튼이 눌러짐과 동시에 SecondPage는 위젯tree 구조에 끼어들 수 있다.
- Navigator가 관리하는 route 스택 자료구조 위에 SecondPage가 올라가야 하므로,<br>
FirstPage 위에 올라가서 FirstPage를 가리고 SecondPage가 보여진다.<br><br>

- context 정보에 근거해서 push 함수가 새로운 route를 쌓아올린다.<br><br>

- builder는 어떤 위젯이 MaterialPageRoute의 도움을 받아서 생성되어야 할 지를 정의하는 속성이다.<br><br>

- _(underscore)는 매개변수로 사용된 것을 보면 사용하지 않는 값이다.
