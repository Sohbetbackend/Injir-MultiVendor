import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/others/show_all_products/views/show_all_products_view.dart';

class HastagsView extends GetView {
  List colors = [
    Colors.deepPurple,
    Colors.amber,
    Colors.black,
    Colors.orange,
    Colors.indigo,
    Colors.brown,
    Colors.blue,
    Colors.green,
  ];
  List names = [
    "Xiaomi",
    "Lenova",
    "Samsung",
    "LG",
    "Acer",
    "Tesla",
    "Sumbar",
    "Akyol",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        listViewName("Hastags", true, size),
        Container(
          height: 110,
          child: GridView.builder(
            itemCount: names.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 150),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => ShowAllProductsView("Hastags"));
                },
                child: Container(
                  padding: EdgeInsets.only(top: 4, bottom: 4),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(color: colors[index], borderRadius: borderRadius10, boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4), spreadRadius: 1, blurRadius: 5)]),
                  child: Text(
                    "#${names[index]}",
                    style: TextStyle(color: Colors.white, fontFamily: josefinSansSemiBold, fontSize: 18),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
