import 'package:flutter/material.dart';
import 'package:makom_customer_app/services/location/location_provider.dart';
import 'package:makom_customer_app/widgets/common_button.dart';
import 'package:makom_customer_app/widgets/index.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../widgets/text_fields.dart';

class SendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locationdata = Provider.of<LocationProvider>(context);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: backArrowBtn(context: context),
        title: appBarTitle(context: context, text: "Send"),
        actions: [
          IconButton(icon: Icon(Icons.help_outline_sharp), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 50, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pickup',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              txtfieldContainer(
                  child: Row(
                children: [
                  Expanded(
                      child: txtField(
                          hintTxt:
                              locationdata.getAddress ?? "Pickup Location")),
                  IconButton(
                      icon: Icon(
                        Icons.location_on,
                        size: 35,
                        color: primaryColor,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, "/googlemaps"))
                ],
              )),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Drop off',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              txtfieldContainer(
                  child: Row(
                children: [
                  Expanded(child: txtField(hintTxt: "Drop off Location")),
                  IconButton(
                      icon: Icon(
                        Icons.location_on,
                        size: 35,
                        color: primaryColor,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, "/googlemaps"))
                ],
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CommonButton(
          text: "Continue",
          onPressed: () {},
        ),
      ),
    );
  }
}
