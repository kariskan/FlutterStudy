import 'package:flutter/material.dart';

//항상 stateless로 만들지 statefull로 만들지 고민해야함.

void main() => runApp(
    MyApp()); //최상위 함수, runApp안에는 위젯이 항상 들어가야 함. , statless(정적)인 위젯으로 지정해야함

class MyApp extends StatelessWidget {
  // 정적인 myApp 위젯
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          'First app', //스마트폰 상에서 보여지는 앱의 이름임( ex)최근에 사용한 앱 목록에서 First app출력 )
      theme: ThemeData(
          //앱의 기본적인 디자인 테마를 지정
          primarySwatch: Colors.blue //앱에서 기본적으로 사용할 색상 견본을 의미
          ),
      home: MyHomePage(), //앱을 실행시킨다면 MyHomePage 위젯 내의 내용을 제일 먼저 보게 됨
    );
  } 
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Scaffold위젯이 없으면 어떠한 요소들도 앱 화면에 배치 할 수 없음
        appBar: AppBar(
          title: Text('타이블 부분'),
          centerTitle:
              true, //가운데 정렬은 true(디폴트 이므로 굳이 안해줘도 된다.), false시 왼쪽(?) 정렬
          backgroundColor: Colors.pink,
          elevation: 0.0,
        ),
        body: Center( //column 위젯을 가로축 상으로 정중앙 위치 시키려면 center위젯을, 세로축으로 정 중앙에 위치시킬려면  column내에서 mainAxixAlignment 사용 
          child: Column(  
            mainAxisAlignment:
                MainAxisAlignment.center, //Axis는 가로축 세로축 할때의 축. 정렬하는 기능
            children: [
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
        ));
  }
}
