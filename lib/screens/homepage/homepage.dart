import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';
import './drawer.dart';
import 'package:makom_customer_app/widgets/index.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAKOM",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: drawer(context),
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(defaultPadding * 2),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nikhil,\nSo what's Unwrapping?",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          color: labelColor,
                          fontSize: 30,
                          letterSpacing: 0.5),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: HomePageButton(
                        text: "Inventory",
                        onPressed: () => Navigator.pushNamed(context, "/items"),
                      ),
                    ),
                    Expanded(
                      child: HomePageButton(
                          text: "Send",
                          onPressed: () => Navigator.pushNamed(
                              context, "/prohibited_items")),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: 0),
                child: Row(
                  children: [
                    Expanded(
                      child: HomePageButton(
                        text: "Pickup",
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: HomePageButton(
                        text: "Track",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              RichText(
                  textScaleFactor: 1.5,
                  text: TextSpan(
                      text: "Offers ",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.bold, color: labelColor),
                      children: [
                        TextSpan(
                            text: "Just For You",
                            style: TextStyle(color: primaryColor))
                      ])),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "What's New!",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
