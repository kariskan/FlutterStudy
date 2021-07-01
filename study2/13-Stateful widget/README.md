
Stateless widget
==
- 사용자의 동작과 상호작용이 필없는 위젯을 사용할 때 사용한다.
- 화면 표시용 위젯
- 내용을 변경할 수 없는 위젯
- ex) Container, Row , Column, Icon, Text 등이 있다.

Stateful widget
==
- 상태를 가질수 있은 위젯을 사용하기 위해 사용한다.
- ex) CheckBox, Slider 등이 있다.
- CheckBox는 체크, 체크안함 이 두가지 상태를 갖고 있으며, 사용자의 액션에 따라 상태가 변하게 된다.

**Stateful widget 이 rebuild 되는 경우**
- child 위젯의 생성자를 통해서 데이터가 전달 될 때
- Internal state가 바뀔 때 


왜 이렇게 나누어 놓았는가?
==
- Stateless는 상호작용이 필요없기 때문에 LifeCycle이 더 빠르게 동작하므로, 반응에 대한 비용을 절약할 수 있다.
- Stateful과 같이 상호작용이 필요한 부분은 사용자와 상호작용시마다 그 상태를 새로 업데이트 해주어야 하기 때문에 LifeCycle이 더 걸리게 된다.

