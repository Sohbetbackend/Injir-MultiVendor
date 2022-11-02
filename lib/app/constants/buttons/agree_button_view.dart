// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';

class AgreeButton extends StatelessWidget {
  final Function() onTap;

  AgreeButton({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  // SettingsController settingsController = Get.put(SettingsController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: animatedContaner());
  }

  AnimatedContainer animatedContaner() {
    return AnimatedContainer(
      decoration: const BoxDecoration(
        borderRadius: borderRadius20,
        color: kPrimaryColor2,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      // padding: EdgeInsets.symmetric(vertical: 10, horizontal: settingsController.agreeButton.value ? 0 : 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      // width: settingsController.agreeButton.value ? 60 : Get.size.width,
      width: Get.size.width,
      duration: const Duration(milliseconds: 1000),
      child:
          // settingsController.agreeButton.value
          //     ? const Center(
          //         child: SizedBox(
          //           width: 28,
          //           height: 28,
          //           child: CircularProgressIndicator(
          //             color: kPrimaryColor,
          //           ),
          //         ),
          //       )
          //     :
          Text(
        'agree'.tr,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: kPrimaryColor, fontFamily: josefinSansSemiBold, fontSize: 22),
      ),
    );
  }
}
