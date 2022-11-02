// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/buttons/profile_button.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

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
        actions: [
          Container(
            width: size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            child: Image.asset(
              logo,
              fit: BoxFit.contain,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
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
                onTap: () {},
                icon: IconlyBroken.wallet,
              ),
              ProfilButton(
                name: 'locations',
                onTap: () {},
                icon: IconlyBroken.document,
              ),
              customDivider(),
              ProfilButton(
                name: 'questions',
                onTap: () {
                  Get.to(() => const FAQs());
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
      ),
    );
  }
}
