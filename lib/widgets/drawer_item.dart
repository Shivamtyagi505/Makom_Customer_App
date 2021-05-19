import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';

class DrawerItem extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function onPress;

  const DrawerItem(
      {Key key, @required this.text, @required this.iconData, this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Icon(
        iconData,
        color: backgroundColor,
      ),
      title: Text(
        "$text",
        style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold,
            color: backgroundColor,
            letterSpacing: 0.5),
      ),
    );
  }
}
