Navigator
=
initialRoute
--
- 멀티 페이지 이동을 할 때 사용되며, 화면에 제일 처음 출력되는 페이지를 불러오는 역할을 한다.
- home 속성과 똑같은 역할을 하며, 그래서 멀티 페이지 이동 구현할 때 사용된다.
- home과 initialRoute 속성 두 개가 동시에 존재할 때, 에러가 발생된다.

routes
--
- routes 속성은 이동할 페이지들의 이름을 지정하고 생성한다.
- URL 형태를 속성으로 갖는다.

Navigator.pushNamed(context, 'URL');
--
- URL 형태의 이름으로 push 를 진행한다.
