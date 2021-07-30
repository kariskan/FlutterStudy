바텀네비게이션 바 구현
--
```dart
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex=0;
  List _pages=[
    Text('page1'),Text('page2'),Text('page3')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:_pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('Search')),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('Account')),
      ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex=index;
    });
  }
}
```

주의사항
--

- ```BottomNavigationBar```는 무조건 2개 이상의 item을 추가해야 하며, 3개까지는 별다른 옵션을 추가해주지 않아도 상관 없다.
- 하지만 4개 이상의 ```item```을 추가할 시 위치가 이상하게 보이는 문제가 발생 함.


해결방안
--

- BottomNavigationBar에 type: BottomNavigationBarType.fixed을 추가.

```dart
bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,	// item이 4개 이상일 경우 추가
  ...  
 ),
```
