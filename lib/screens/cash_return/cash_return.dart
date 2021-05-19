import 'package:flutter/material.dart';
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
          title: Text(
            "Cash Return",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
          ),
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
