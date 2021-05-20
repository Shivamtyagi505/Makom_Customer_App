import 'package:flutter/material.dart';

Widget backArrowBtn({@required BuildContext context}) {
  return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ));
}
