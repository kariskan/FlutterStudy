import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyPage(),
    );
   }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
              vertical: 50, horizontal: 10), //vertical:세로, horizontal:수평
          padding: EdgeInsets.all(10),
          child: Text('Hello'),
        ),
      ),
    );
  }
}
