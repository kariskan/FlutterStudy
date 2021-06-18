# Types of Widgets: Flutter의 모든 것

<h3>1. Stateless Widget</h3>
정의: 이전 상호작용의 어떠한 값도 저장하지 않음 (상태가 없는 정적인 위젯)

1. 스크린상에 존재만 할 뿐 아무것도 하지 않음
2. 어떠한 실시간 데이터도 저장하지 않음
3. 어떤 변화(모양,상태)를 유발하는 value값을 가지지 않음.

<h3>2. Stateful Widget</h3>
정의: Value 값을 지속적으로 추적 및 보존 (계속 움직임이나 변화가 있는 위젯)

1. 사용자의 상호작용에 따라서 모양이 바뀜
2. 데이터를 받게 되었을 때 모양이 바뀜

<h3>3. flutter widget tree</h3>

1. Widget들은 tree 구조로 정리 될 수 있음
2. 한 Widget내에 얼마든지 다른 Widget들이 포함 될 수 있음 
3. Widget은 부모 위젯과 자식 위젯으로 구성
4. Parent widget을 widget container라고 부르기도 함
<img width="717" alt="스크린샷 2021-06-18 오후 8 33 22" src="https://user-images.githubusercontent.com/74492426/122554828-6ee1af00-d074-11eb-9bc7-e2a0707e02aa.png">

