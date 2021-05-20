import 'package:flutter/material.dart';
import 'package:makom_customer_app/widgets/index.dart';
import './pending_list.dart';
import './requested_list.dart';
import '../../constants.dart';

class CashReturn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: backArrowBtn(context: context),
          title: appBarTitle(context: context, text: "Cash Return"),
          actions: [
            IconButton(icon: Icon(Icons.help_outline_sharp), onPressed: () {})
          ],
          bottom: TabBar(
            labelStyle: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Requested",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PendingList(),
            RequestedList(),
          ],
        ),
      ),
    );
  }
}
