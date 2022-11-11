// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        title: Text("aboutUs".tr),
        titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 24),
      ),
      body: customWidget(
        child: Container(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 8),
                child: Text(
                  'contactInformation'.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 20),
                ),
              ),
              simpleWidget(
                icon: IconlyBold.message,
                name: "dadebaygurbanow333@gmail.com",
              ),
              simpleWidget(
                icon: IconlyBold.location,
                name: "Aşgabat şäheriniň Bagtyýarlyk etrabynyň Zähmet geçelgesi 27 - nji jaýy",
              ),
              simpleWidget(
                icon: IconlyBold.call,
                name: "+993-62-99-03-44",
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile simpleWidget({
    required IconData icon,
    required String name,
  }) {
    return ListTile(
      dense: true,
      onTap: () async {},
      minLeadingWidth: 10,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 14),
      shape: const RoundedRectangleBorder(borderRadius: borderRadius5),
      leading: Icon(
        icon,
        color: kPrimaryColor,
      ),
      title: Text(
        name,
        textAlign: TextAlign.start,
        style: const TextStyle(fontFamily: josefinSansMedium, fontSize: 18, color: Colors.black),
      ),
    );
  }
}
