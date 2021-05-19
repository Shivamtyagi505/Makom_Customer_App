import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';
import 'package:makom_customer_app/screens/auth/signup_screen.dart';
import 'package:makom_customer_app/screens/termsAndConditions/policies_screen.dart';
import 'package:makom_customer_app/widgets/index.dart';
import 'package:makom_customer_app/widgets/text_fields.dart';
import 'package:makom_customer_app/widgets/headings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    var height = mq.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          labelColorHeading(text: "MAKOM"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                txtfieldContainer(child: txtField(hintTxt: "Email")),
                txtfieldContainer(child: txtField(hintTxt: "Password")),
               CommonButton(
                 text: "Login",
                 onPressed: () => Navigator.pushNamed(context, "/home"),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    heading(
                        text: "Forgot Password?", color: primaryColor, size: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: heading(
                          text: "Signup",
                          color: labelColor,
                          size: 20,
                          textDecoration: TextDecoration.underline),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heading(text: "Continue with", size: 25, color: labelColor),
              SizedBox(height: height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: height * 0.05,
                        child: Image.asset("assets/images/fb_logo.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: height * 0.05,
                        child: Image.asset("assets/images/google_logo.png")),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              heading(text: "By signing up you agree to our", size: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Policies()));
                },
                child: RichText(
                  text: TextSpan(
                    text: '',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline)),
                      TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                      TextSpan(
                          text: 'Private Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.03)
            ],
          )
        ],
      ),
    );
  }
}
