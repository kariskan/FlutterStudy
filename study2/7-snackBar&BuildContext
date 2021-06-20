import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext context2) {
            return Center(
              child: FlatButton(
                  child: Text(
                    'show me',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Scaffold.of(context2).showSnackBar(SnackBar(
                      content: Text('hello'),
                    ));
                  }),
            );
          },
        ));
  }
}
