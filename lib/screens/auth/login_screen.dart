import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';
import 'package:makom_customer_app/screens/termsAndConditions/policies_screen.dart';
import 'package:makom_customer_app/utils/index.dart';
import 'package:makom_customer_app/widgets/index.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    var height = mq.height;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            labelColorHeading(text: "MAKOM"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  txtfieldContainer(
                      child: txtField(
                          hintTxt: "Email",
                          validator: (value) => validateEmail(value))),
                  txtfieldContainer(
                      child: txtField(
                          hintTxt: "Password",
                          validator: (value) => validatePassword(value))),
                  CommonButton(
                    text: "Login",
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Navigator.pushNamed(context, "/home");
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      heading(
                          text: "Forgot Password?",
                          color: primaryColor,
                          size: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
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
                heading(
                    text: "By signing up you agree to our",
                    size: 20,
                    color: labelColor),
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
                                color: labelColor,
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
                                color: labelColor,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10)
              ],
            )
          ],
        ),
      ),
    );
  }
}
