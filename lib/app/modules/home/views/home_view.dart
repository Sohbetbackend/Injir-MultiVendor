import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:injir/app/modules/home/views/trending_items_view.dart';

import '../../others/search_page_view.dart';
import '../controllers/home_controller.dart';
import 'banners_view.dart';
import 'brands_view.dart';
import 'categories_widget_view.dart';
import 'discounted_items_view.dart';
import 'hastags_view.dart';
import 'new_items_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor2,
        appBar: appbar(),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: ListView(
              children: [
                BannersView(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: HastagsView(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CategoriesWidgetView(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TrendingItemsView(),
                ),
                NewItemsView(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: BrandsView(),
                ),
                DiscountedItems(),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ));
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: kPrimaryColor2,
      title: Text(appName),
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 35),
      actions: [
        IconButton(
            onPressed: () {
              Get.to(() => SearchPageView());
            },
            icon: Icon(
              IconlyBroken.search,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {
              defaultBottomSheet(
                  child: Wrap(
                    children: [
                      ListTile(
                        title: Text(
                          "+993-62-99-03-44",
                          style: TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 18),
                        ),
                        trailing: Icon(
                          IconlyBroken.arrowRightCircle,
                          color: Colors.black,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "+993-62-99-03-43",
                          style: TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 18),
                        ),
                        trailing: Icon(
                          IconlyBroken.arrowRightCircle,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  name: 'callNumber'.tr);
            },
            icon: Icon(
              IconlyBroken.call,
              color: Colors.white,
            )),
        SizedBox(
          width: 8,
        )
      ],
      centerTitle: true,
    );
  }
}
