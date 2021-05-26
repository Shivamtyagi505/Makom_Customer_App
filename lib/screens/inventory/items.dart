import 'package:flutter/material.dart';
import 'package:makom_customer_app/screens/inventory/item_cards.dart';

import '../../constants.dart';

// ignore: must_be_immutable
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
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemCards(
              name: _items[index].name,
              weight: _items[index].weight,
              image: _items[index].image,
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

  List<Items> _items = [
    Items(
      image:
          "https://www.lg.com/in/images/refrigerators/md06236076/gallery/N01_GL-S292RPZY-Refrigerators-Front-View-D-01.jpg",
      name: "260 Litres Frost Free Refrigerator",
      weight: "90 KG",
    ),
    Items(
      image:
          "https://www.mrright.in/ideas/wp-content/uploads/2015/07/Picture18.png",
      name: "Samsung Split AC",
      weight: "18 KG",
    ),
    Items(
      image: "https://static.toiimg.com/photo/msid-78804776/78804776.jpg",
      name: "WhirlPool washing machine",
      weight: "88 KG",
    ),
    Items(
      image:
          "https://previews.123rf.com/images/andreypopov/andreypopov1905/andreypopov190500411/122651593-various-type-of-kitchen-appliances-on-worktop-in-kitchen.jpg",
      name: "Kitchen Appliances ",
      weight: "25 KG",
    ),
    Items(
      image:
          "https://www.extremetech.com/wp-content/uploads/2019/06/RX5700XT-GPU-640x353.jpg",
      name: "AMD READON 6800",
      weight: "500 G",
    ),
    Items(
      image:
          "https://www.extremetech.com/wp-content/uploads/2014/09/dell-ultrasharp-5k-27-inch.jpg",
      name: "Dual Dell monitor",
      weight: "8 KG",
    ),
    Items(
      image:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-furniture-websites-joybird-1506629308.jpeg",
      name: "Sofa",
      weight: "250 KG",
    ),
    Items(
      image:
          "https://i.pinimg.com/originals/21/5e/31/215e31a98cb6fd49cf29b70d8af45d6c.png",
      name: "Grocery",
      weight: "30 KG",
    ),
    Items(
      image:
          "https://i.pinimg.com/originals/19/cb/a6/19cba675fd6a790f97a620877bc7b63d.jpg",
      name: "Yamaha motor bike",
      weight: "600 KG",
    ),
    Items(
      image:
          "https://producelikeapro.com/blog/wp-content/uploads/2020/02/How-to-EQ-Acoustic-Guitar-in-a-Mix-scaled.jpg",
      name: "Guitar",
      weight: "1 KG",
    ),
  ];
}

class Items {
  final String image;
  final String name;
  final String weight;

  Items({this.image, this.name, this.weight});
}
