Dice project
=
Form widget
--
TextField 같은 사용자의 입력을 받을 수 있는 다양한 위젯들을 통해 여러 정보들을 하나의 그룹으로 묶어 처리하고자 할때 쓴다.

회원가입 페이지를 예로 생각해보면 용도를 이해하기 쉽다.

가입 페이지에 있는 여러개 입력란을 통해 값을 입력하고 저장하는 과정과 관련된 위젯들을 담는 위젯이라고 생각할 수 있다.<br><br>
출처: https://iosroid.tistory.com/19 [조용한 담장]

inputDecorationTheme: 텍스트 필드 위에 사용자에게 정보를 주는 텍스트, 즉 label을 디자인 하기 위한 속성<br><br>
ButtonTheme: 버튼의 크기 등을 편리하게 설정할 수 있다.<br><br>
TextField: keyboradType을 설정하며 패스워드 같은 경우 obscureText 속성으로 invisible 하게 변경할 수 있다.

SingleChildScrollView
--
키보드가 밑에서 밀고 올라와서 스크린 영역을 차지할 때 차지한 영역 만큼을 스크롤 될 수 있도록 만들어주는 위젯이다.

TextEditingController
--
Text 필드와 연결시켜, Text 필드의 입력된 값을 가져올 때 사용한다.<br><br>
dispose method: 더 이상 TextEditingController을 사용하지 않을 때, resource의 낭비를 최소화 하기 위해 사용한다.

Focus
--
Focus를 준다. -> 자동이던, 사용자가 클릭을 하던, 특정 텍스트 필드가 정보를 입력받을 수 있는 상태로 되는것을 말한다.<br><br>
FocusNode: 포커스를 받는 특정 위젯을 식별한다.<br><br>
FocusScope: 어떤 위젯들까지 포커스를 받는지 범위를 나타낸다.<br><br>

FocusScope.of(context) method -> 현재 텍스트 필드와 연결되어있는 FocusNode를 찾을 수 있고,<br>
여기서 unfocus method 로 포커스를 없애므로 인해 키보드를 사라지게 만들 수 있다.<br><br>

GestureDetector: 화면에서 빈 공간 클릭 시 키보드가 사라지는 기능을 한다. 즉, 사용자의 이벤트를 감지한다.

Image.asset
--
- 보다 간결한 코드로 이미지를 불러온다.
- Expanded widget: 이미지를 넓히고, 확장하기 편리한 위젯이다.
- column이나 row 내에서 원하는 만큼 확장할 수 있다.
- field 속성: 요소들의 공간 배치 범위를 지정할 수 있다.
