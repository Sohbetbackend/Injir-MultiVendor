import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/cart/views/order_page.dart';

import '../../../constants/constants.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Injir"),
        backgroundColor: kPrimaryColor2,
        titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 35),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
                onPressed: () {
                  showDeleteDialog(context: context, onTap: () {}, text: 'Delete Cart', text2: 'Are you want to Delete all cart items ?');
                },
                icon: Icon(
                  IconlyLight.delete,
                  color: Colors.white,
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => OrderPage());
        },
        shape: RoundedRectangleBorder(borderRadius: borderRadius20),
        isExtended: true,
        label: Row(
          children: [
            Text(
              "Order",
              style: TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 19),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Icon(
                IconlyBroken.arrowRightCircle,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          'CartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
