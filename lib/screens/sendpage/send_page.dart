import 'package:flutter/material.dart';

import '../../constants.dart';

class SendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Send",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: Icon(Icons.help_outline_sharp), onPressed: () {})
        ],
      ),
      
    );
  }
}