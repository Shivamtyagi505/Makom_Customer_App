import 'package:flutter/material.dart';

Widget txtfieldContainer({@required Widget child}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(0.0, 2.5))
          ]),
      child: Padding(padding: const EdgeInsets.all(10.0), child: child),
    ),
  );
}

Widget txtField({@required hintTxt}) {
  return TextField(
    style: TextStyle(fontSize: 20),
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintTxt,
        hintStyle: TextStyle(
            fontWeight: FontWeight.w700, color: Colors.grey, fontSize: 20)),
  );
}
