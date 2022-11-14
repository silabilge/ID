import 'dart:core';
import 'package:flutter/material.dart';

class myData {
  String date = "11.12.2003";
  String name = "Sıla Bilge Kontaş";
  TextStyle style = const TextStyle(
      fontSize: 20,
      fontFamily: 'Raleway',
      fontFamilyFallback: ['AppleColorEmoji']);
  double radius = 100;
  double containerHeight = 50;
  double containerWidth = 200;
  double shadowBlur = 10;
  Color shadowColor = Colors.grey;
  double shadowSpread = 5;
  double dynamicWidth(BuildContext context) {
    return MediaQuery.of(context).size.width - 40;
  }
}
