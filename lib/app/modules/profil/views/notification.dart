import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        title: Text("notification".tr),
        titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 24),
      ),
      body: customWidget(
        child: ListView.builder(
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
      ),
    );
  }
}
