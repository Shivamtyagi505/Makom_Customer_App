import 'package:flutter/material.dart';
import 'package:makom_customer_app/screens/chatScreen/messageBubble.dart';
import 'package:makom_customer_app/screens/chatScreen/sender_textfield.dart';
import 'package:makom_customer_app/widgets/buttons.dart';
import 'package:makom_customer_app/widgets/headings.dart';
import 'package:makom_customer_app/widgets/thin_bottom_navbar.dart';

import '../../constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backArrowBtn(context: context),
        elevation: 0,
        backgroundColor: Colors.white,
        title: heading(text: "Team Makom", color: primaryColor, size: 40),
        actions: [
          Icon(
            Icons.more_horiz_outlined,
            color: Colors.black,
            size: 50,
          ),
          SizedBox(width: 5)
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  messageBubble(
                      isSender: false, text: "Hi User, How can I help you?"),
                  messageBubble(
                      isSender: true,
                      text:
                          "I am having trouble with my recent delivery #0234A25W"),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [senderTextfield(), thinBottomBar()],
            ),
          ],
        ),
      ),
    );
  }
}
