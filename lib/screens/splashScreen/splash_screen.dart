import 'package:flutter/material.dart';
import 'package:makom_customer_app/widgets/headings.dart';
import 'package:makom_customer_app/screens/auth/login_screen.dart';
import 'dart:async';

import '../../constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void screenTransition() async {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  void initState() {
    super.initState();
    screenTransition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            heading(text: "MAKOM", size: 55, color: Colors.white),
            Image.asset("assets/images/splashscreen_logo.png"),
            Column(
              children: [
                heading(
                    text: "happiness delivered", size: 25, color: Colors.white),
                heading(text: "door-to-door", size: 25, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
