import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';

class HomePageButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const HomePageButton({Key key, @required this.text, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(primaryColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
        onPressed: onPressed,
        child: Container(
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? height * 0.20
              : height * 0.40,
          child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
