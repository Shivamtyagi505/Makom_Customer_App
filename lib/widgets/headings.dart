import 'package:flutter/material.dart';

import '../constants.dart';

Text labelColorHeading({@required String text}) {
  return Text(text,
      textScaleFactor: 3,
      style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700));
}

Text heading({
  @required String text,
  double size = 25,
  Color color = Colors.black,
  TextAlign textAlign = TextAlign.left,
  TextDecoration textDecoration = TextDecoration.none,
}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w600,
        decoration: textDecoration),
  );
}
