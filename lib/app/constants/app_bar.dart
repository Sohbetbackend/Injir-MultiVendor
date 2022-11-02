// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, avoid_implementing_value_types

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final bool backArrow;
  final bool elevationWhite;
  final double? fontSize;
  final Widget? icon;
  final bool iconRemove;
  final String name;

  const MyAppBar({
    required this.fontSize,
    required this.backArrow,
    required this.iconRemove,
    required this.name,
    required this.elevationWhite,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget get child => Text('ad');

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 1);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AppBar(
          elevation: 0,
          centerTitle: true,
          leadingWidth: 60,
          leading: backArrow
              ? IconButton(
                  icon: Icon(
                    IconlyBroken.arrowLeftCircle,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                )
              : SizedBox.shrink(),
          actions: [
            if (iconRemove)
              SizedBox.shrink()
            else
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: icon,
              )
          ],
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            name.tr,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: josefinSansSemiBold,
              fontSize: fontSize == 0.0
                  ? sizeWidth > 800
                      ? 35
                      : 25
                  : fontSize,
            ),
          ),
        ),
        elevationWhite ? dividerr() : SizedBox.shrink(),
      ],
    );
  }
}
