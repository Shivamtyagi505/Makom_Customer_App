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
    tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.grey,
        labelColor: primaryColor,
        indicatorSize: TabBarIndicatorSize.label),
    appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black)));
