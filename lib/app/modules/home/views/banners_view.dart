import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/cards/banner_card.dart';
import 'package:injir/app/constants/constants.dart';
import '../controllers/home_controller.dart';

class BannersView extends GetView {
  @override
  final HomeController bannerController = Get.put(HomeController());
  List a = [
    "assets/images/banners/1.png",
    "assets/images/banners/2.png",
    "assets/images/banners/3.png",
    "assets/images/banners/9.png",
    "assets/images/banners/5.png",
    "assets/images/banners/6.png",
    "assets/images/banners/7.png",
    "assets/images/banners/4.png",
    "assets/images/banners/3.png",
    "assets/images/banners/8.png",
    "assets/images/banners/9.png",
  ];

  BannersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: a.length,
          itemBuilder: (context, index, count) {
            return BannerCard(
              image: a[index],
              name: "Reklama Ady",
            );
          },
          options: CarouselOptions(
            onPageChanged: (index, CarouselPageChangedReason a) {
              bannerController.bannerDotsIndex.value = index;
            },
            height: 220,
            viewportFraction: 1.0,
            autoPlay: true,
            scrollPhysics: const BouncingScrollPhysics(),
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 2000),
          ),
        ),
        dots(a.length)
      ],
    );
  }

  SizedBox dots(int itemCount) {
    return SizedBox(
      height: 4,
      width: Get.size.width,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            return Obx(() {
              return dot(index);
            });
          },
        ),
      ),
    );
  }

  AnimatedContainer dot(int index) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
      height: 16,
      width: 18,
      decoration: BoxDecoration(
        color: bannerController.bannerDotsIndex.value == index ? kPrimaryColor : Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
