import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/others/show_all_products/views/show_all_products_view.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
          onPressed: () {
            Get.to(() => ShowAllProductsView("Brand Name"));
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius10,
              ),
              elevation: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/logo/${index + 1}.png",
                  fit: BoxFit.contain,
                ),
              )),
              dividerr(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                child: Text(
                  "Brend Name",
                  style: TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 18),
                ),
              )
            ],
          )),
    );
  }
}
