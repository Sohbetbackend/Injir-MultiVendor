import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/modules/others/show_all_products/views/show_all_products_view.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.index, required this.page});
  final bool page;
  final int index;
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

    return GestureDetector(
      onTap: () {
        Get.to(() => ShowAllProductsView(names[index]));
      },
      child: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10, top: page ? 15 : 10, right: page ? 10 : 0),
              decoration: BoxDecoration(borderRadius: page ? borderRadius40 : borderRadius20, color: Colors.red, boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4), spreadRadius: 1, blurRadius: 5)]),
              child: ClipRRect(
                borderRadius: page ? borderRadius40 : borderRadius20,
                child: Image.asset(
                  "assets/images/category/${index + 1}.png",
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height,
                ),
              )),
          Positioned.fill(
              child: Container(
            margin: EdgeInsets.only(left: 10, top: page ? 15 : 10, right: page ? 10 : 0),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(color: page ? Colors.black54 : Colors.black38, borderRadius: page ? borderRadius40 : borderRadius20),
            alignment: Alignment.center,
            child: Text(
              names[index],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontFamily: page ? josefinSansBold : josefinSansSemiBold, fontSize: page ? 40 : 22),
            ),
          )),
        ],
      ),
    );
  }
}
