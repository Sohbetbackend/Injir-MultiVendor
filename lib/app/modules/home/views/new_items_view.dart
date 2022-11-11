import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/widgets.dart';

import '../../../constants/cards/product_cart_view.dart';

class NewItemsView extends GetView {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        listViewName("newItems", true, size),
        SizedBox(
          height: 280,
          child: ListView.builder(
            itemCount: 16,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(index: index, image: "assets/images/discount/${index + 1}.png");
            },
          ),
        )
      ],
    );
  }
}
