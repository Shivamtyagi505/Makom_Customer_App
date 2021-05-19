import 'package:flutter/material.dart';
import 'package:makom_customer_app/utils/index.dart';
import 'package:makom_customer_app/widgets/index.dart';

class RequestedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return CashReturnCard(
            id: "$index", date: dateMonthYearFormat(DateTime.now()));
      },
    );
  }
}
