import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '타이틀',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('menu'),
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print('menu button is clicked');
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            print('Shopping cart button is clicked');
          },
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print('Search button is clicked');
          },
        ),
      ],
    ));
  }
}
