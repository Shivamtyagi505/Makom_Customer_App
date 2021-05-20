import 'package:flutter/material.dart';
import 'package:makom_customer_app/screens/index.dart';
import 'package:makom_customer_app/widgets/index.dart';
import 'package:makom_customer_app/widgets/switch_tile.dart';

import '../../constants.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _sound = true;
  bool _notification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backArrowBtn(context: context),
        title: appBarTitle(context: context, text: "Profile"),
        actions: [
          IconButton(icon: Icon(Icons.help_outline_sharp), onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: 15),
            child: Stack(
              children: [
                UserInfo(
                  color: labelColor,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: Icon(Icons.edit_outlined), onPressed: () {}))
              ],
            ),
          ),
          Divider(),
          CustomSwitchTile(
            text: "Sound",
            value: _sound,
            onChanged: (bool value) {
              setState(() {
                _sound = value;
              });
            },
          ),
          CustomSwitchTile(
            text: "Notification",
            value: _notification,
            onChanged: (bool value) {
              setState(() {
                _notification = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
