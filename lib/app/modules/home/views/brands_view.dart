import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/others/show_all_products_view.dart';

class BrandsView extends GetView {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        listViewName("brands", false, size),
        Container(
          height: 150,
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            itemCount: 33,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => ShowAllProductsView('brands'));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        width: 120,
                        height: 150,
                        margin: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(color: kPrimaryColorCard, shape: BoxShape.circle),
                        child: Image.asset(
                          "assets/images/logo/${index + 1}.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        "Brand\nname",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, height: 1, fontFamily: josefinSansMedium, fontSize: 19),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
