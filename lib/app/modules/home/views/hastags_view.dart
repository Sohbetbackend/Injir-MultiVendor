import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/others/show_all_products_view.dart';

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
    Colors.green,
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
    "Sumbar",
    "IT Meydanca",
    "Kamillik",
    "LG",
    "Acer",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        listViewName("hastags".tr, false, size),
        Container(
          height: 110,
          child: StaggeredGridView.countBuilder(
            itemCount: names.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => ShowAllProductsView("Hastags"));
                },
                child: Container(
                  padding: EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 4),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(color: colors[index], borderRadius: borderRadius10, boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4), spreadRadius: 1, blurRadius: 5)]),
                  child: Text(
                    "#${names[index]}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontFamily: josefinSansSemiBold, fontSize: 18),
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) => StaggeredTile.count(
              1,
              index % 2 == 0 ? 3.2 : 2.6,
            ),
            crossAxisCount: 2,
          ),
        ),
      ],
    );
  }
}
