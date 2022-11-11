// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/buttons/profile_button.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/profil/views/history_orders.dart';

import '../auth/views/auth_view.dart';
import 'about_us.dart';
import 'faq.dart';
import 'notification.dart';
import 'profile_settings.dart';
import 'settings.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor2,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        title: Text("profil".tr),
        titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 24),
      ),
      body: customWidget(
        child: ListView(
          children: [
            ProfilButton(
              name: 'profil',
              onTap: () {
                Get.to(() => const ProfileSettings());
              },
              icon: IconlyBroken.profile,
            ),
            ProfilButton(
              name: 'settings',
              onTap: () {
                Get.to(() => const Settings());
              },
              icon: IconlyBroken.setting,
            ),
            ProfilButton(
              name: 'notification',
              onTap: () {
                Get.to(() => NotificationPage());
              },
              icon: IconlyBroken.notification,
            ),
            customDivider(),
            ProfilButton(
              name: 'orders',
              onTap: () {
                Get.to(() => HistoryOrders());
              },
              icon: CupertinoIcons.cube_box,
            ),
            ProfilButton(
              name: 'locations',
              onTap: () {},
              icon: IconlyBroken.location,
            ),
            customDivider(),
            ProfilButton(
              name: 'questions',
              onTap: () {
                Get.to(() => FAQs());
              },
              icon: IconlyBroken.document,
            ),
            ProfilButton(
              name: 'aboutUs',
              onTap: () {
                Get.to(() => const AboutUs());
              },
              icon: IconlyBroken.user3,
            ),
            ProfilButton(
              name: 'signUp',
              onTap: () {
                Get.to(() => AuthView());
              },
              icon: IconlyBroken.login,
            ),
          ],
        ),
      ),
    );
  }
}
