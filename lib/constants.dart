import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF59cba4);
const Color lightPrimaryColor = Color(0xFF9ee0c9);
const Color backgroundColor = Color(0xFFFFFFFF);
const Color labelColor = Color(0xFF515151);
const double defaultPadding = 10.0;

///App Theme
ThemeData themeData = ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: backgroundColor,
  accentColor: primaryColor,
  tabBarTheme: ktabBarTheme,
  appBarTheme: kappBarTheme,
);

///App AppBarTheme
AppBarTheme kappBarTheme = AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black));

///App TabBarTheme
TabBarTheme ktabBarTheme = TabBarTheme(
    indicator: BoxDecoration(
        color: Colors.transparent,
        border: Border(bottom: BorderSide(color: primaryColor, width: 0.8))),
    unselectedLabelColor: Colors.grey,
    labelColor: primaryColor,
    indicatorSize: TabBarIndicatorSize.label);

InputDecoration inputDecoration = InputDecoration(
    labelStyle: TextStyle(color: labelColor, fontWeight: FontWeight.w600),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: primaryColor, width: 1.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.red, width: 1.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.red, width: 1.0),
    ));

Text appBarTitle({BuildContext context, String text}) {
  return Text(
    "$text",
    style: Theme.of(context)
        .textTheme
        .headline5
        .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
  );
}
