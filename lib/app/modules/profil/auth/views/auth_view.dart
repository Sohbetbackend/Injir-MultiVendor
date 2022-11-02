import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/profil/auth/views/log_in_view.dart';
import 'package:injir/app/modules/profil/auth/views/sign_in_view.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kPrimaryColor2,
        body: Stack(
          children: [
            SizedBox(
              width: Get.size.width,
              height: Get.size.height / 2,
              child: ClipRRect(
                borderRadius: borderRadius30,
                child: Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: borderRadius30,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      appName,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: kPrimaryColor, fontFamily: josefinSansBold, fontSize: 50),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: Get.size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.only(left: 8),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          isScrollable: true,
                          indicatorColor: kPrimaryColor,
                          automaticIndicatorColorAdjustment: true,
                          labelStyle: const TextStyle(fontFamily: josefinSansMedium, fontSize: 22),
                          unselectedLabelStyle: const TextStyle(fontFamily: josefinSansRegular),
                          labelColor: kPrimaryColor,
                          indicatorWeight: 4,
                          indicatorPadding: const EdgeInsets.only(top: 45),
                          indicator: const BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              text: 'signUp'.tr,
                            ),
                            Tab(
                              text: 'signIn'.tr,
                            )
                          ],
                        ),
                      ),
                    ),
                    dividerr(),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: kPrimaryColor,
                        child: TabBarView(
                          children: [SignInView(), LogInView()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  IconlyBroken.arrowLeftCircle,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
