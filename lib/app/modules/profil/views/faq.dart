// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:injir/app/constants/app_bar.dart';
import 'package:injir/app/constants/constants.dart';

class FAQs extends StatelessWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(backArrow: true, fontSize: 18.0, elevationWhite: true, iconRemove: true, name: 'questions'),
      body: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: Text(
              "Sorag ${index + 1}",
              style: const TextStyle(
                color: Colors.black,
                fontFamily: josefinSansMedium,
                fontSize: 18,
              ),
            ),
            collapsedIconColor: Colors.black,
            iconColor: Colors.black,
            collapsedTextColor: Colors.black,
            childrenPadding: const EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 12),
            children: [
              Text(
                loremImpsum,
                style: const TextStyle(color: Colors.black87, fontSize: 16, height: 1.5, fontFamily: josefinSansRegular),
              )
            ],
          );
        },
      ),
    );
  }
}
