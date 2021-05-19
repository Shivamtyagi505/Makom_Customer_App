import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';
import 'package:makom_customer_app/routes.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: primaryColor,
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  Routes();
}
