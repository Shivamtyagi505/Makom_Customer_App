import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';
import 'package:makom_customer_app/screens/chatScreen/chat_screen.dart';
import 'package:makom_customer_app/screens/termsAndConditions/terms&conditionsList.dart';
import 'package:makom_customer_app/widgets/buttons.dart';
import 'package:makom_customer_app/widgets/headings.dart';

class Policies extends StatefulWidget {
  const Policies({Key key}) : super(key: key);

  @override
  _PoliciesState createState() => _PoliciesState();
}

class _PoliciesState extends State<Policies> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    var height = mq.height;
    return Scaffold(
      appBar: AppBar(
        leading: backArrowBtn(context: context),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatScreen()));
          },
          child: Image.asset("assets/images/chat_fab.png")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: labelColorHeading(text: "MAKOM")),
              SizedBox(height: height * 0.05),
              ExpandablePanel(
                  collapsed: Text(""),
                  theme: ExpandableThemeData(
                      hasIcon: true,
                      iconRotationAngle: 0,
                      iconColor: labelColor,
                      iconSize: 40,
                      collapseIcon: Icons.keyboard_arrow_down,
                      expandIcon: Icons.keyboard_arrow_right),
                  header: heading(
                      text: "Terms & Conditions", size: 25, color: labelColor),
                  expanded: tCList(context)),
              ExpandablePanel(
                collapsed: Text(""),
                theme: ExpandableThemeData(
                    hasIcon: true,
                    iconRotationAngle: 0,
                    iconColor: labelColor,
                    iconSize: 40,
                    collapseIcon: Icons.keyboard_arrow_down,
                    expandIcon: Icons.keyboard_arrow_right),
                header: heading(
                    text: "Privacy Policy", size: 25, color: labelColor),
                expanded: Text(
                  "hello hiii",
                  softWrap: true,
                ),
              ),
              ExpandablePanel(
                collapsed: Text(""),
                theme: ExpandableThemeData(
                    hasIcon: true,
                    iconRotationAngle: 0,
                    iconColor: labelColor,
                    iconSize: 40,
                    collapseIcon: Icons.keyboard_arrow_down,
                    expandIcon: Icons.keyboard_arrow_right),
                header: heading(
                    text: "Social Media Policy", size: 25, color: labelColor),
                expanded: Text(
                  "hello hiii",
                  softWrap: true,
                ),
              ),
              ExpandablePanel(
                collapsed: Text(""),
                theme: ExpandableThemeData(
                    hasIcon: true,
                    iconRotationAngle: 0,
                    iconColor: labelColor,
                    iconSize: 40,
                    collapseIcon: Icons.keyboard_arrow_down,
                    expandIcon: Icons.keyboard_arrow_right),
                header: heading(
                    text: "Terms of Carriage", size: 25, color: labelColor),
                expanded: Text(
                  "hello hiii",
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
