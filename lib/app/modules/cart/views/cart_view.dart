import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/cards/cart_card.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/modules/cart/views/order_page.dart';

import '../controllers/cart_controller.dart';

class CartView extends StatefulWidget {
  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor2,
        appBar: appbar(),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Get.to(() => OrderPage());
          },
          style: ElevatedButton.styleFrom(primary: kPrimaryColor2, shape: RoundedRectangleBorder(borderRadius: borderRadius15), padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'orderProducts'.tr,
                style: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Icon(
                  IconlyBroken.arrowRightCircle,
                  color: Colors.white,
                  size: 20,
                ),
              )
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: ListView.builder(
              itemCount: 8,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return CardCart(
                  createdAt: "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                  name: "Haryt ${index + 1}",
                  id: 1,
                  price: '170',
                  image: "assets/images/buymore/${index + 1}.png",
                );
              },
            ),
          ),
        ));
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: kPrimaryColor2,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: kPrimaryColor2, statusBarIconBrightness: Brightness.light),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            IconlyLight.delete,
            color: Colors.white,
          ),
        )
      ],
      title: Text("cart".tr),
      titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 24),
    );
  }
}
