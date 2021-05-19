import 'package:flutter/material.dart';

import '../constants.dart';

class CashReturnCard extends StatelessWidget {
  final String id;
  final String date;

  const CashReturnCard({Key key, @required this.id, @required this.date})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      child: Card(
          elevation: 3.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ID",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "254W$id",
                      style: Theme.of(context).textTheme.headline6.copyWith(color: labelColor),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Complaint Date",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$date",
                      style: Theme.of(context).textTheme.headline6.copyWith(color: labelColor),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
