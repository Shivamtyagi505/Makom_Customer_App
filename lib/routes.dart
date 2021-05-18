import 'package:flutter/material.dart';
import 'package:makom_customer_app/screens/homepage/homepage.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage()
  };

  Routes() {
    runApp(new MaterialApp(
      title: 'Makom',
      routes: routes,
      home: HomePage(),
    ));
  }
}
