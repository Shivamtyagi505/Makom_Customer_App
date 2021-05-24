import 'package:flutter/material.dart';
import 'package:makom_customer_app/screens/inventory/item_cards.dart';

import '../../constants.dart';

class ItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Items",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ItemCards(
              name: "History Books",
              weight: "5 Kg",
              image: "https://assets.readitforward.com/wp-content/uploads/2016/05/joshuabecker.jpg",
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () => Navigator.pushNamed(context, "/add_items"),
        child: Icon(Icons.add),
      ),
    );
  }
}
