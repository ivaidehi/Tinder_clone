import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle namesStyle = const TextStyle(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle subHeadingStyle =
      const TextStyle(color: Colors.greenAccent, fontSize: 12);

  static AppBar appBar = AppBar(
    backgroundColor: Colors.white,
    title: Image.asset(
      "assets/tinder logo.png",
      width: 130,
      height: 100,
    ),
    centerTitle: true,
  );

  static BoxDecoration circleButtonStyle = BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.red,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 5,
        offset: const Offset(0, 4),
      ),
    ],
  );
}
