import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';

class CustomSwitchTile extends StatelessWidget {
  final String text;
  final Function onChanged;
  final bool value;

  const CustomSwitchTile(
      {Key key,
      @required this.text,
      @required this.onChanged,
      @required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        '$text',
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.bold, color: labelColor),
      ),
      value: value,
      onChanged: onChanged,
      activeColor: primaryColor,
    );
  }
}
