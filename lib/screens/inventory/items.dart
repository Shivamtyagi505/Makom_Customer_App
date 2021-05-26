import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:makom_customer_app/screens/inventory/item_cards.dart';
import 'package:makom_customer_app/services/firestore_collection.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class ItemsPage extends StatefulWidget {
  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String uid;

  @override
  void initState() {
    final User user = auth.currentUser;
    uid = user.uid;
    super.initState();
  }

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
      body: StreamBuilder(
          stream: CollectionFetcher().getItems(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              var data = snapshot.data.docs.toList();
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemCards(
                    image: (data[index].data()["image"]),
                    name: (data[index].data()["name"]),
                    weight: (data[index].data()["weigth"]),
                  );
                },
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () => Navigator.pushNamed(context, "/add_items"),
        child: Icon(Icons.add),
      ),
    );
  }
}
