import 'package:flutter/material.dart';
import 'package:makom_customer_app/screens/payment_method/credit_cards.dart';
import 'package:makom_customer_app/screens/payment_method/debit_cards.dart';
import 'package:makom_customer_app/widgets/index.dart';
import '../../constants.dart';

class PaymentMethods extends StatefulWidget {
  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backArrowBtn(context: context),
        title: appBarTitle(context: context, text: "Payment Methods"),
        actions: [
          IconButton(icon: Icon(Icons.help_outline_sharp), onPressed: () {})
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultPadding,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text('Your Cards',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold)),
              Divider(),
              SizedBox(
                height: 30,
              ),
              DebitCards(),
              SizedBox(
                height: 20,
              ),
              CreditCards(),
            ]),
      ),
    );
  }
}
