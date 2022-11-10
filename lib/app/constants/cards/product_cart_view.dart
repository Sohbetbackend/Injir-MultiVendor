// ignore_for_file: always_put_required_named_parameters_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/buttons/fav_button_view.dart';
import 'package:injir/app/constants/cards/discountContainer.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/modules/others/product_profil/views/product_profil_view.dart';

import '../buttons/add_cart_button.dart';

class ProductCard extends StatelessWidget {
  final int index;
  final String image;

  const ProductCard({required this.index, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(color: Colors.white, borderRadius: borderRadius20, boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.25), spreadRadius: 1, blurRadius: 5)]),
      margin: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,

          // foregroundColor: Color.fromARGB(255, 233, 233, 233),
          primary: Color.fromARGB(15, 142, 142, 142),
          padding: const EdgeInsets.only(left: 6, right: 6, top: 6, bottom: 5),
          shape: const RoundedRectangleBorder(borderRadius: borderRadius20),
        ),
        onPressed: () {
          Get.to(() => ProductProfilView());
        },
        child: Stack(
          children: [
            Column(
              children: [
                imagePart(index),
                namePart1(index),
              ],
            ),
            Positioned(bottom: 0, right: 3, child: AddCartButton()),
          ],
        ),
      ),
    );
  }

  Expanded imagePart(int index) {
    return Expanded(
      flex: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: borderRadius20,
              ),
              child: ClipRRect(
                borderRadius: borderRadius20,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(bottom: 10, left: 5, child: DiscountContainer(text: "30")),
          Positioned(
            top: 8,
            right: 6,
            child: FavButton(
              whiteColor: false,
            ),
          )
        ],
      ),
    );
  }

  Widget namePart1(int index) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 5, left: 4, bottom: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "170",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 22,
                      fontFamily: josefinSansSemiBold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 6),
                    child: Text(
                      ' TMT',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 13,
                        fontFamily: josefinSansSemiBold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "180",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        fontFamily: josefinSansSemiBold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        ' TMT',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          fontFamily: josefinSansSemiBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            'Haryt ady',
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 19),
          ),
        ],
      ),
    );
  }
}
