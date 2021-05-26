import 'package:flutter/material.dart';

import '../constants.dart';

class KTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function validator;
  final bool obscure;
  final int maxLines;
  final bool haveShadow;

  const KTextFormField({
    Key key,
    @required this.label,
    this.hintText = "Hint text",
    this.keyboardType = TextInputType.text,
    this.controller,
    this.validator,
    this.obscure = false,
    this.maxLines = 1,
    this.haveShadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
      child: Container(
        child: Material(
          elevation: haveShadow ? 4 : 0.0,
          shadowColor:
              haveShadow ? labelColor.withOpacity(0.50) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          child: TextFormField(
              validator: validator,
              maxLines: maxLines,
              keyboardType: keyboardType,
              decoration: inputDecoration.copyWith(
                hintText: hintText,
                labelText: label,
              )),
        ),
      ),
    );
  }
}
