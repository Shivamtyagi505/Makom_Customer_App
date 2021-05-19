import 'package:flutter/material.dart';

List<String> tcListItems = [
  "Limited License",
  "Permitted Use",
  "No Commercial Use",
  "Link & Search Results",
  "Applicable Law",
  "Your License",
  "Advertising",
  "Site Operation",
  "Purchases",
  "Multi Currency",
  "Refund & Return Policy"
];
Widget tCList(BuildContext context) {
  return ListView.builder(
      itemCount: tcListItems.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, int index) {
        return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                tcListItems[index],
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black38),
              ),
            ));
      });
}
