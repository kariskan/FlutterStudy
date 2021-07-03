import 'package:flutter/material.dart';
import 'package:flutter_study/login_app/login.dart';

class MyButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  MyButton(
      {required this.image,
      required this.text,
      required this.color,
      required this.radius,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final LogIn logIn = new LogIn();
    logIn.buildButton();

    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
