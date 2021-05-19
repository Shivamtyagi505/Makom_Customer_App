import 'package:flutter/material.dart';

Widget senderTextfield() {
  return Row(
    children: [
      Expanded(
          child: Container(
        color: Color(0xffF2F2F2),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type Message",
                          hintStyle: TextStyle(color: Colors.black26)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.attach_file_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ),
      ))
    ],
  );
}
