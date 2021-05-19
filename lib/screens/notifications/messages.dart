import 'package:flutter/material.dart';
import 'package:makom_customer_app/widgets/index.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return NotificationsCard(
            profileImage:
                "https://www.pngkey.com/png/detail/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png",
            title: "Great wall Ind",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          );
        });
  }
}
