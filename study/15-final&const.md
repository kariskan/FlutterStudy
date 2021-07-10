final&const
=

final
--
- 오직 1 번만 설정할 수 있다.
- final 초기화 방법
  1. 변수 선언 시 초기화
  2. 객체 생성 시 외부 데이터를 받아서 생성자를 통해 초기화
- 초기화 되는 시점: 앱이 실행될 때 -> run-time constant
- final 변수의 값을 바꾸려면 앱을 rebuild 해야한다.

const
--
- const 변수는 컴파일 시간에 상수가 된다. -> compile-time constant
- 선언과 동시에 초기화 해야 한다.
