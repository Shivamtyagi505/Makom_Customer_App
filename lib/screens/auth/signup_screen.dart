import 'package:flutter/material.dart';
import 'package:makom_customer_app/utils/index.dart';
import 'package:makom_customer_app/widgets/buttons.dart';
import 'package:makom_customer_app/widgets/common_button.dart';
import 'package:makom_customer_app/widgets/headings.dart';
import 'package:makom_customer_app/widgets/index.dart';
import 'package:makom_customer_app/widgets/text_fields.dart';

import '../../constants.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _passcontroller = TextEditingController();
  TextEditingController _cpasscontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;
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
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: height * 0.08),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  txtfieldContainer(
                      child: txtField(
                          hintTxt: "First Name",
                          validator: (value) => validateNames(value))),
                  txtfieldContainer(
                      child: txtField(
                          hintTxt: "Last Name",
                          validator: (value) => validateNames(value))),
                  txtfieldContainer(
                      child: txtField(
                          hintTxt: "Email",
                          validator: (value) => validateEmail(value))),
                  txtfieldContainer(
                      child: Row(
                    children: [
                      Container(
                          child: heading(
                              text: "+971", color: labelColor, size: 18)),
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
                        child: txtField(
                            hintTxt: "Enter Mobile Number",
                            validator: (value) => validateMobile(value)),
                      ))
                    ],
                  )),
                  txtfieldContainer(
                      child: Row(
                    children: [
                      Expanded(
                          child: txtField(
                              obscure: _obscure,
                              maxLine: 1,
                              controller: _passcontroller,
                              hintTxt: "Password",
                              validator: (value) => validatePassword(value))),
                      IconButton(
                          icon: Icon(Icons.remove_red_eye_outlined),
                          onPressed: () {
                            setState(() {
                              _obscure = _obscure ? false : true;
                            });
                          })
                    ],
                  )),
                  txtfieldContainer(
                      child: txtField(
                          obscure: _obscure,
                          maxLine: 1,
                          controller: _cpasscontroller,
                          hintTxt: "Confirm Password",
                          validator: (value) {
                            if (value == null) {
                              return "Please Re-Enter New Password.";
                            } else if (value != _passcontroller.text) {
                              return "Password does not match.";
                            }
                          })),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonButton(
                text: "Signup",
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Navigator.pushNamed(context, "/signup_otp");
                  }
                },
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
