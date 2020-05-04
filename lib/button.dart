import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final text;

  Button({this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
          decoration: BoxDecoration(
            color: themeData.canvasColor,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: Color(0xffA5A8AB),
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Color(0xffffffff),
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffEEF2F4),
                themeData.canvasColor,
                Color(0xffD4D8DB),
                Color(0xffBDC0C3),
              ],
              stops: [0.1, 0.3, 0.8, 1],
            ),
          ),
        ),
      ),
    );
  }
}
