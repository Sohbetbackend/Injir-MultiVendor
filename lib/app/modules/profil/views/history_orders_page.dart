// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

import 'package:injir/app/constants/constants.dart';

class HistoryOrdersPage extends StatelessWidget {
  const HistoryOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        title: Text("orders".tr),
        titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 24),
      ),
      body: ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            title: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6, bottom: 4),
                        child: Icon(
                          IconlyLight.timeCircle,
                          color: kPrimaryColor,
                          size: 24,
                        ),
                      ),
                      Text(
                        '${'orderPage'.tr}$index',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: josefinSansMedium,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '28.10.2022',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: josefinSansRegular,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '150' ' TMT',
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: josefinSansMedium,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            iconColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 6),
            trailing: const Icon(
              IconlyLight.arrowRightCircle,
              color: Colors.white,
              size: 20,
            ),
          );
        },
      ),
    );
  }
}
