import 'package:flutter/material.dart';

import '../../constants.dart';

// isSender is true for customer messages
Widget messageBubble({@required bool isSender, @required String text}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        SizedBox(width: isSender ? 20 : 0),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                color: isSender ? primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: isSender ? Colors.transparent : Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0.0, 2.5))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(text,
                  style: TextStyle(
                      color: isSender ? Colors.white : Colors.black,
                      fontSize: 25)),
            ),
          ),
        ),
        SizedBox(width: !isSender ? 20 : 0),
      ],
    ),
  );
}
