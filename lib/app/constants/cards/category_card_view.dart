// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';

class CategoryCardView extends StatelessWidget {
  final bool finised;
  final String image;
  final String name;
  const CategoryCardView({
    required this.finised,
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: Get.size.width,
        margin: EdgeInsets.only(top: 15, bottom: 18, right: 12, left: 12),
        decoration: BoxDecoration(color: Colors.black, borderRadius: borderRadius30, border: Border.all(color: kPrimaryColor)),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: borderRadius30,
                child: Hero(
                    tag: '',
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(decoration: BoxDecoration(borderRadius: borderRadius30, color: kPrimaryColor.withOpacity(0.4))),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: finised ? EdgeInsets.zero : const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('endTournament'.tr, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 28)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text("Nace Sany haryt bar", textAlign: TextAlign.center, style: TextStyle(color: Colors.white.withOpacity(0.8), fontFamily: josefinSansSemiBold, fontSize: 18)),
                    ),
                    Text("asdasd", textAlign: TextAlign.center, style: TextStyle(color: Colors.white.withOpacity(0.8), fontFamily: josefinSansSemiBold, fontSize: 18)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
