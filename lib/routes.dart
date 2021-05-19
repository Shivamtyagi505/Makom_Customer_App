import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';
import 'package:makom_customer_app/screens/index.dart';
import 'package:makom_customer_app/screens/splashScreen/splash_screen.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/splashscreen': (BuildContext context) => SplashScreen(),
    '/home': (BuildContext context) => HomePage(),
    '/cash_return': (BuildContext context) => CashReturn(),
    '/send_page': (BuildContext context) => SendPage(),
    '/profile': (BuildContext context) => ProfilePage(),
    '/share_app': (BuildContext context) => ShareApp(),
    '/payment_methods': (BuildContext context) => PaymentMethods(),
    '/notifications': (BuildContext context) => Notifications(),
    '/prohibited_items': (BuildContext context) => ProhibitedItems(),
  };

  Routes() {
    runApp(new MaterialApp(
      theme: themeData,
      title: 'Makom',
      routes: routes,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ));
  }
}
