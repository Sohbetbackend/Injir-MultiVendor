import 'package:flutter/material.dart';
import 'package:injir/app/constants/app_bar.dart';
import 'package:injir/app/constants/constants.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(fontSize: 18.0, backArrow: true, iconRemove: false, name: 'notification', elevationWhite: true),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              title: Text(
                "Notification Title",
                style: const TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 18),
              ),
              collapsedIconColor: kPrimaryColor,
              collapsedTextColor: kPrimaryColor,
              childrenPadding: const EdgeInsets.all(15),
              children: [
                Text(
                  loremImpsum,
                  style: const TextStyle(fontFamily: josefinSansMedium, fontSize: 18, color: Colors.grey),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
