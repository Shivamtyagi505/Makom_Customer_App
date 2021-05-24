import 'package:flutter/material.dart';

import '../constants.dart';

class KDropDownField extends StatelessWidget {
  final GlobalKey fdropdownkey;
  final Function onChanged;
  final String label;
  final String hintText;
  final List<String> itemList;

  const KDropDownField(
      {Key key,
      this.onChanged,
      this.label,
      this.hintText,
      this.itemList,
      this.fdropdownkey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
        child: DropdownButtonFormField(
          items: itemList.map<DropdownMenuItem<String>>((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          hint: Text(
            hintText ?? "",
          ),
          onChanged: onChanged,
          validator: (value) =>
              value == null ? 'This field is required !' : null,
          isDense: true,
          decoration: inputDecoration.copyWith(
            hintText: hintText,
            labelText: label,
          ),
        ));
  }
}
