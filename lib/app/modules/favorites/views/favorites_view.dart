import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/cards/product_cart_view.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor2,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        actions: [
          Container(
            width: size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 8, right: 12, left: 24, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 1,
                ),
                Image.asset(
                  logo,
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: () {
                      showDeleteDialog(context: context, onTap: () {}, text: 'Delete Favorites', text2: 'Are you want to Delete all favorite items ?');
                    },
                    icon: Icon(
                      IconlyBroken.delete,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            itemCount: 12,
            itemBuilder: (context, index) => ProductCard(
              index: index,
              image: 'assets/images/buymore/${index + 1}.png',
            ),
            staggeredTileBuilder: (index) => const StaggeredTile.count(1, 1.5),
          ),
        ),
      ),
    );
  }
}
