import 'package:flutter/material.dart';
import 'package:makom_customer_app/widgets/index.dart';
import './messages.dart';
import './orders.dart';
import '../../constants.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: backArrowBtn(context: context),
          title: appBarTitle(context: context, text: "Notifications"),
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
                text: "Messages",
              ),
              Tab(
                text: "Orders",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MessageList(),
            OrdersList(),
          ],
        ),
      ),
    );
  }
}
