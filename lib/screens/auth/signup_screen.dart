import 'package:flutter/material.dart';
import 'package:makom_customer_app/utils/index.dart';
import 'package:makom_customer_app/widgets/buttons.dart';
import 'package:makom_customer_app/widgets/common_button.dart';
import 'package:makom_customer_app/widgets/headings.dart';
import 'package:makom_customer_app/widgets/text_fields.dart';

import '../../constants.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
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
                              hintTxt: "Password",
                              validator: (value) => validatePassword(value))),
                      Icon(Icons.remove_red_eye_rounded)
                    ],
                  ))
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
            )
          ],
        ),
      ),
    );
  }
}
