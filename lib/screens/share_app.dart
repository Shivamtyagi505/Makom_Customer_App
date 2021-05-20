import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:makom_customer_app/widgets/index.dart';

import '../constants.dart';

class ShareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backArrowBtn(context: context),
        title: appBarTitle(context: context, text: "Share App"),
        actions: [
          IconButton(icon: Icon(Icons.help_outline_sharp), onPressed: () {})
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Share\n Makom App",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.share_outlined,
                size: 100,
                color: primaryColor,
              ),
              SizedBox(
                height: 50,
              ),
              Wrap(
                children: [
                  _svgImage(path: assetFacebook, label: "Facebook"),
                  _svgImage(path: assetWhatsapp, label: "WhatsApp"),
                  _svgImage(path: assetEmail, label: "Email"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  final String assetFacebook = 'assets/icons/facebook.svg';
  final String assetWhatsapp = 'assets/icons/whatsapp.svg';
  final String assetEmail = 'assets/icons/email.svg';
  Widget _svgImage({String path, Function onClick, String label}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: onClick,
          child: SvgPicture.asset(
            path,
            semanticsLabel: label,
            width: 50,
            height: 50,
          )),
    );
  }
}
