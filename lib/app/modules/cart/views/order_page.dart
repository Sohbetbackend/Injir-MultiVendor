import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/buttons/agree_button_view.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/custom_text_field.dart';
import 'package:injir/app/constants/phone_number.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/cart/controllers/cart_controller.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final CartController cartController = Get.put(CartController());
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final FocusNode orderAdressFocusNode = FocusNode();
  final FocusNode orderUserName = FocusNode();
  final FocusNode orderPhoneNumber = FocusNode();
  final FocusNode orderNote = FocusNode();
  final _orderPage = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        title: Text(
          'orders'.tr,
          style: TextStyle(fontFamily: josefinSansSemiBold, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            IconlyLight.arrowLeftCircle,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Form(
            key: _orderPage,
            child: ListView(
              padding: const EdgeInsets.all(15.0),
              children: [
                textpart('userName', true),
                CustomTextField(
                  labelName: 'userName',
                  controller: userNameController,
                  focusNode: orderUserName,
                  requestfocusNode: orderPhoneNumber,
                  isNumber: false,
                  maxline: 1,
                  borderRadius: true,
                ),
                textpart('phoneNumber', false),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: PhoneNumber(mineFocus: orderPhoneNumber, controller: phoneController, requestFocus: orderAdressFocusNode, style: false),
                ),
                textpart('selectCityTitle', true),
                selectCity(),
                textpart('orderAdress', false),
                CustomTextField(
                  labelName: 'orderAdress',
                  controller: addressController,
                  focusNode: orderAdressFocusNode,
                  requestfocusNode: orderNote,
                  isNumber: false,
                  borderRadius: true,
                  maxline: 4,
                ),
                textpart('note', false),
                CustomTextField(
                  labelName: 'note',
                  controller: noteController,
                  focusNode: orderNote,
                  requestfocusNode: orderUserName,
                  isNumber: false,
                  maxline: 4,
                  borderRadius: true,
                ),
                SizedBox(
                  height: 40,
                ),
                AgreeButton(
                  onTap: () {
                    if (_orderPage.currentState!.validate()) {
                      Get.back();
                    } else {
                      showSnackBar('noConnection3', 'errorEmpty', Colors.red);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String name = 'Asgabat';

  Widget selectCity() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(borderRadius: borderRadius20, border: Border.all(color: kGreyColor, width: 2)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
        title: Text(name.tr, style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 18)),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius15,
        ),
        trailing: const Icon(IconlyLight.arrowRightCircle),
        onTap: () {
          Get.defaultDialog(
            title: 'selectCityTitle'.tr,
            titleStyle: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium),
            radius: 5,
            backgroundColor: Colors.white,
            titlePadding: const EdgeInsets.symmetric(vertical: 20),
            content: Column(
              children: List.generate(
                cities.length,
                (index) => Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    dividerr(),
                    TextButton(
                      onPressed: () {
                        name = cities[index];
                        setState(() {});
                        Get.back();
                      },
                      child: Text(
                        '${cities[index]}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
