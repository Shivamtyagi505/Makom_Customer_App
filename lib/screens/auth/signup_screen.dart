import 'package:flutter/material.dart';
import 'package:makom_customer_app/widgets/buttons.dart';
import 'package:makom_customer_app/widgets/headings.dart';
import 'package:makom_customer_app/widgets/text_fields.dart';
import 'package:makom_customer_app/widgets/thin_bottom_navbar.dart';

import '../../constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: backArrowBtn(context: context),
        elevation: 0,
        backgroundColor: Colors.white,
        title: heading(text: "Signup", color: primaryColor, size: 40),
      ),
      bottomNavigationBar: thinBottomBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: height * 0.08),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                txtfieldContainer(child: txtField(hintTxt: "First Name")),
                txtfieldContainer(child: txtField(hintTxt: "Last Name")),
                txtfieldContainer(child: txtField(hintTxt: "Email")),
                txtfieldContainer(
                    child: Row(
                  children: [
                    Container(width: 40, child: heading(text: "+91")),
                    Container(
                      height: 45,
                      width: 1,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 1,
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: txtField(hintTxt: "Enter Mobile Number"),
                    ))
                  ],
                )),
                txtfieldContainer(
                    child: Row(
                  children: [
                    Expanded(child: txtField(hintTxt: "Password")),
                    Icon(Icons.remove_red_eye_rounded)
                  ],
                ))
              ],
            ),
          ),
          SizedBox(height: height * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: button1(btnTxt: "Signup"),
          )
        ],
      ),
    );
  }
}
