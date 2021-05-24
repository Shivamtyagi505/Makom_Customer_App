import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';

class ItemCards extends StatelessWidget {
  final String image;
  final String name;
  final String weight;
  final Function onPressed;

  const ItemCards({Key key, this.image, this.name, this.weight, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.50),
                blurRadius: 5.0,
              ),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                height: height * 0.25,
                width: double.infinity,
                fit: BoxFit.cover,
                  image: NetworkImage(image ??
                      "https://cdn.trendhunterstatic.com/thumbs/the-invisible-bookends.jpeg",)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    name ?? "History Books",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold, color: labelColor),
                  ),
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.local_shipping_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      weight ?? "5 KG",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                          fontWeight: FontWeight.bold, color: labelColor),
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
