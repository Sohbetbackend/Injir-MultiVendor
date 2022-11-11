import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/buttons/agree_button_view.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/custom_text_field.dart';
import 'package:injir/app/constants/phone_number.dart';

class SignInView extends GetView {
  TextEditingController fullNameController = TextEditingController();
  FocusNode fullNameFocusNode = FocusNode();
  TextEditingController idController = TextEditingController();
  FocusNode idFocusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  TextEditingController phoneNumberController = TextEditingController();
  FocusNode phoneNumberFocusNode = FocusNode();
  final _signUp = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _signUp,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 14, top: 12),
                child: Text(
                  'signInDialog'.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 20),
                ),
              ),
              CustomTextField(labelName: 'signIn1', controller: fullNameController, focusNode: fullNameFocusNode, requestfocusNode: idFocusNode, borderRadius: true, isNumber: false),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextField(labelName: 'signIn2', controller: idController, focusNode: idFocusNode, requestfocusNode: phoneNumberFocusNode, borderRadius: true, isNumber: false),
              ),
              PhoneNumber(
                mineFocus: phoneNumberFocusNode,
                controller: phoneNumberController,
                requestFocus: fullNameFocusNode,
                style: false,
              ),
              const SizedBox(
                height: 10,
              ),
              AgreeButton(onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
