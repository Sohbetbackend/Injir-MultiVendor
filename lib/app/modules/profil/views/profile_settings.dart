// ignore_for_file: file_names, deprecated_member_use, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/app_bar.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/custom_text_field.dart';
import 'package:injir/app/constants/phone_number.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  TextEditingController pubgNameController = TextEditingController();
  FocusNode pubgNameFocusNode = FocusNode();
  TextEditingController phoneController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();
  TextEditingController pubgIDController = TextEditingController();
  FocusNode pubgIDFocusNode = FocusNode();

  changeData(String name, String phone, String pubgID) {
    pubgNameController.text = name;
    phoneController.text = phone;
    pubgIDController.text = pubgID;
  }

  @override
  void initState() {
    super.initState();
    changeData("Gurbanow Dadebay", "62-99-03-44", "Aşgabat");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(backArrow: true, fontSize: 0.0, iconRemove: true, elevationWhite: true, name: 'profil'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              textpart('signIn1'),
              CustomTextField(
                labelName: '',
                controller: pubgNameController,
                borderRadius: true,
                focusNode: pubgNameFocusNode,
                requestfocusNode: pubgIDFocusNode,
                isNumber: false,
                disabled: true,
              ),
              textpart('signIn2'),
              CustomTextField(
                labelName: '',
                controller: pubgIDController,
                borderRadius: true,
                focusNode: pubgIDFocusNode,
                requestfocusNode: pubgNameFocusNode,
                isNumber: false,
                disabled: true,
              ),
              textpart('userPhoneNumber'),
              PhoneNumber(
                mineFocus: phoneFocusNode,
                controller: phoneController,
                requestFocus: pubgNameFocusNode,
                style: false,
                disabled: false,
              ),
              const SizedBox(
                height: 25,
              ),
              // AgreeButton(
              //   onTap: () {
              //     Get.find<SettingsController>().agreeButton.value = !Get.find<SettingsController>().agreeButton.value;
              //     GetMeModel().shortUpdate(pubgUserId: pubgIDController.text, pubgUserName: pubgNameController.text).then((value) {
              //       if (value == 200) {
              //         Get.back();
              //         showSnackBar('copySucces', 'changedData', Colors.green);
              //         pubgNameController.clear();
              //         pubgIDController.clear();
              //       } else {
              //         showSnackBar('noConnection3', 'tournamentInfo14', Colors.red);
              //       }
              //       Get.find<SettingsController>().agreeButton.value = !Get.find<SettingsController>().agreeButton.value;
              //     });
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }

  Padding textpart(String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 30),
      child: Text(
        name.tr,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(fontSize: 18, color: Colors.black, fontFamily: josefinSansMedium),
      ),
    );
  }
}
