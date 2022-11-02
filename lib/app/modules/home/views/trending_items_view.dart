import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/cards/product_cart_view.dart';
import 'package:injir/app/constants/widgets.dart';

class TrendingItemsView extends GetView {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Wrap(
      children: [
        listViewName("Trending Items", true, size),
        SizedBox(
          height: 280,
          child: ListView.builder(
            itemCount: 12,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(index: index, image: "assets/images/buymore/${index + 1}.png");
            },
          ),
        )
      ],
    );
  }
}
