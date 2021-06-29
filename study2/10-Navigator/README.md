Navigator Widget
--
* 앱상에서 페이지 이동 이동 기능 구현을 위해 필요.
* navigator 위젯으로 페이지 이동 기능을 구현하려면 반드시 route와 context의 개념을 이해해야 한다.
* Scaffold를 사용해서 AppBar를 생성하면 flutter가 자동으로 뒤로가기 화살표를 만들어준다. (굳이 pop 메서드 구현 필요 x)
* AppBar를 생성하지 않는다면 pop메서드 구현 필요.



<img width="623" alt="스크린샷 2021-06-29 오후 12 32 43" src="https://user-images.githubusercontent.com/74492426/123733248-1b722b00-d8d6-11eb-9e2a-0378bee730c4.png">

- 페이지 이동 후 Flutter Inspector를 새로고침 하면 widget tree 상에서 FirstPage가 있던 자리에 SecondPage가 들어와 있다. (스택)

<img width="623" alt="스크린샷 2021-06-29 오후 12 32 57" src="https://user-images.githubusercontent.com/74492426/123733262-2462fc80-d8d6-11eb-9bda-27d1b2c3b33a.png">

동작화면
--
![Navigator](https://user-images.githubusercontent.com/74492426/123733209-0ac1b500-d8d6-11eb-8eda-bb75a3835e54.gif)
