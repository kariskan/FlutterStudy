data passing
=

위젯간의 데이터 전달
--
- 데이터를 전달받는 위젯(위치기반 날씨정보 앱에서의 weather_screen.dart)에서 속성을 추가하고,

- 생성자를 통해 데이터를 주는 위젯(loading.dart)에서 데이터를 받는 클래스의 인스턴스가 생성될 때 데이터를 전달한다.

- 여기서 parseWeatherData 로 받은 데이터는 WeatherScreen 클래스의 객체이고, 
이것을 또 다시 _WeatherScreenState 객체로 전달해야한다.

- 왜냐하면 텍스트 위젯은 _WeatherScreenState 내에 있기 때문이다.

- 따라서 이 방법은 위젯 속성을 사용해서 State 객체가 parent 위젯인 WeatherScreen stateful 위젯이
가지고 있는 모든 데이터에 접근하게 만들 수 있다.

- 그렇게 하면 WeatherScreen 위젯이 생성되는 순간 state class의 widget 속성을 사용해서 loading.dart 로부터
전달받은 데이터를 _WeatherScreen state 클래스로 전달해서 출력할 수 있다.
