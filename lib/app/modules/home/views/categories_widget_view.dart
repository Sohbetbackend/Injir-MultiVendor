import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/cards/category_card.dart';
import 'package:injir/app/constants/widgets.dart';

class CategoriesWidgetView extends GetView {
  List names = [
    "Elektronika",
    "Kitaplar",
    "Azyk harytlar",
    "Eşikler",
    "Kosmetika",
    "Okuw Esbaplary",
    "Sowgatlar",
    "Öý harytlary",
    "Sport harytlary",
    "Oýunjaklar",
    "Haýwan harytlary",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        listViewName("Top Categories", true, size),
        Container(
          height: 120,
          child: GridView.builder(
            itemCount: names.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, mainAxisExtent: 180),
            itemBuilder: (BuildContext context, int index) {
              return CategoryCard(
                index: index,
                page: false,
              );
            },
          ),
        ),
      ],
    );
  }
}
