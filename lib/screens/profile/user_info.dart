import 'package:flutter/material.dart';

import '../../constants.dart';

class UserInfo extends StatelessWidget {
  final Color color;

  const UserInfo({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.popAndPushNamed(context, "/profile"),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color ?? Colors.white,
            backgroundImage: NetworkImage("https://www.pngkey.com/png/detail/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png"),
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
                style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color ?? backgroundColor),
              ),
              Text(
                "+91 77X XXX XXX",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color ?? backgroundColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
