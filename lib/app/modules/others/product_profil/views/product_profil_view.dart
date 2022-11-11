import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/buttons/fav_button_view.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:share/share.dart';

import '../controllers/product_profil_controller.dart';

class ProductProfilView extends GetView<ProductProfilController> {
  final String image;

  ProductProfilView(this.image);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        width: size.width,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: kPrimaryColor2, padding: EdgeInsets.symmetric(vertical: 10), shape: RoundedRectangleBorder(borderRadius: borderRadius20)),
            child: Text(
              "Add to Cart",
              style: TextStyle(color: kPrimaryColor, fontFamily: josefinSansSemiBold, fontSize: 20),
            )),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [appBar()];
        },
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: [
              customDivider(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Name",
                    style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 24),
                  ),
                  Row(
                    children: [
                      Text(
                        '170',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                          fontFamily: josefinSansBold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 6, top: 7),
                        child: Text(
                          ' TMT',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontFamily: josefinSansBold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "Product code",
                style: const TextStyle(color: Colors.grey, fontFamily: josefinSansMedium, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Details",
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 20),
                ),
              ),
              twoText(name1: "Brand :", name2: "Samsung"),
              twoText(name1: "Category :", name2: "Electronic"),
              twoText(name1: "View count :", name2: "1257"),
              twoText(name1: "Shop Name :", name2: "Imdat Shop"),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  'Description'.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 20),
                ),
              ),
              Text(
                loremImpsum,
                style: const TextStyle(fontFamily: josefinSansMedium, fontSize: 18, color: Colors.black54),
              ),
              SizedBox(
                height: 30,
              ),
              customDivider(),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Reviews",
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 20),
                ),
              ),
              Container(
                  width: size.width,
                  height: 400,
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      Expanded(
                        child: Lottie.asset(
                          'assets/lottie/NoComment.json',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "No Comment",
                          style: TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 18),
                        ),
                      ),
                      Container(
                          width: size.width,
                          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: kPrimaryColor2, borderRadius: borderRadius10),
                          child: Text(
                            "If you want to write comment please Sign In",
                            style: TextStyle(color: kPrimaryColor, fontFamily: josefinSansMedium, fontSize: 14),
                          )),
                    ],
                  )),
              customDivider(),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Same Products",
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 300,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget twoText({required String name1, required String name2}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name1,
            style: TextStyle(color: Colors.black54, fontFamily: josefinSansRegular, fontSize: 18),
          ),
          Text(
            name2,
            style: TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 18),
          ),
        ],
      ),
    );
  }

  SliverAppBar appBar() {
    return SliverAppBar(
      expandedHeight: 400,
      floating: true,
      pinned: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.grey.shade200,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: const EdgeInsets.only(top: 8, bottom: 4, left: 8),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          decoration: const BoxDecoration(
            borderRadius: borderRadius15,
            color: Colors.white,
          ),
          child: const Icon(
            IconlyBroken.arrowLeftCircle,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 8),
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 4,
            ),
            child: FavButton(
              whiteColor: true,
              id: 1,
              image: "assets/images/buymore/0.png",
              name: 'Haryt 1',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Share.share("assets/images/buymore/0.png", subject: appName);
          },
          child: Container(
            margin: const EdgeInsets.only(top: 8, bottom: 4, right: 8),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            decoration: const BoxDecoration(
              borderRadius: borderRadius15,
              color: Colors.white,
            ),
            child: Image.asset(
              shareIcon,
              width: 24,
              height: 24,
              color: Colors.black,
            ),
          ),
        ),
      ],
      flexibleSpace: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 20),
        child: CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, count) {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                "assets/images/buymore/${index + 1}.png",
                fit: BoxFit.contain,
              ),
            );
          },
          options: CarouselOptions(
            onPageChanged: (index, CarouselPageChangedReason a) {},
            viewportFraction: 1.0,
            autoPlay: true,
            height: Get.size.height,
            aspectRatio: 4 / 2,
            scrollPhysics: const BouncingScrollPhysics(),
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 2000),
          ),
        ),
      ),
    );
  }
}
