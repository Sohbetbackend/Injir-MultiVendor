import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/modules/others/banner_profile_view.dart';

class BannerCard extends StatelessWidget {
  final String image;
  final String name;

  const BannerCard({
    required this.image,
    Key? key,
    required this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(() => BannerProfileView(name, image, "${loremImpsum}${loremImpsum}"));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: size.width,
        child: ClipRRect(
          borderRadius: borderRadius20,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
