// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class FAQs extends StatelessWidget {
  FAQs({Key? key}) : super(key: key);
  List questions = ['Sargydyň ýagdaýyny nädip görmeli ?', 'Nädip Salgy goşmaly ?', 'Sms werfikasiýa kod gelmedi ?'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        title: Text("questions".tr),
        titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 22),
      ),
      body: customWidget(
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              title: Text(
                questions[index],
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
      ),
    );
  }
}
