import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/cards/category_card.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class CategoriesWidgetView extends GetView {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        listViewName("categoriesMini", false, size),
        Container(
          height: 120,
          child: ListView.builder(
            itemCount: names.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemExtent: 220,
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
