import 'package:flutter/material.dart';
import 'package:makom_customer_app/widgets/index.dart';

import '../../constants.dart';

Widget drawer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.70,
    color: primaryColor,
    child: ListView(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          child: _profileInfo(context),
        ),
        DrawerItem(text: "History", iconData: Icons.history, onPress: () {}),
        DrawerItem(
          text: "Favourite Places",
          iconData: Icons.favorite,
          onPress: () {},
        ),
        DrawerItem(
          text: "Payment Methods",
          iconData: Icons.payment,
          onPress: () => Navigator.popAndPushNamed(context, "/payment_methods"),
        ),
        DrawerItem(
          text: "Notifications",
          iconData: Icons.notifications,
          onPress: () => Navigator.popAndPushNamed(context, "/notifications"),
        ),
        DrawerItem(
          text: "Cash Return",
          iconData: Icons.money,
          onPress: () => Navigator.popAndPushNamed(context, "/cash_return"),
        ),
        DrawerItem(
          text: "Support",
          iconData: Icons.support,
          onPress: () {},
        ),
        DrawerItem(
          text: "About",
          iconData: Icons.info,
          onPress: () {},
        ),
        DrawerItem(
          text: "Feedback",
          iconData: Icons.feedback,
          onPress: () {},
        ),
        DrawerItem(
          text: "Logout",
          iconData: Icons.logout,
          onPress: () {},
        ),
        DrawerItem(
          text: "Share App",
          iconData: Icons.share,
          onPress: () => Navigator.popAndPushNamed(context, "/share_app"),
        ),
      ],
    ),
  );
}

Widget _profileInfo(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.popAndPushNamed(context, "/profile"),
      child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 35,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shahruk K",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold, color: backgroundColor),
            ),
            Text(
              "+91 77X XXX XXX",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.bold, color: backgroundColor),
            )
          ],
        ),
      ],
    ),
  );
}
