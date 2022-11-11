// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/cards/brand_card.dart';
import 'package:injir/app/constants/cards/category_card.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  TabBar tabbar() {
    return TabBar(
      labelStyle: const TextStyle(fontFamily: josefinSansSemiBold, fontSize: 20),
      unselectedLabelStyle: const TextStyle(fontFamily: josefinSansMedium, fontSize: 18),
      labelColor: kPrimaryColor,
      unselectedLabelColor: Colors.grey,
      labelPadding: const EdgeInsets.only(top: 8, bottom: 4),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: kPrimaryColor,
      indicatorWeight: 2,
      tabs: [
        Tab(
          text: 'categoriesMini'.tr,
        ),
        Tab(
          text: 'brands'.tr,
        ),
      ],
    );
  }

  Widget page2(int length) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: length,
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return BrandCard(index: index);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    );
  }

  Widget page1(int length) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemExtent: 220,
      itemCount: length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return CategoryCard(
          index: index,
          page: true,
        );
      },
    );
  }

  void _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {});

    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kPrimaryColor2,
          title: Text("categoriesMini".tr),
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white, fontFamily: josefinSansBold, fontSize: 24),
          centerTitle: true,
        ),
        body: SmartRefresher(
          footer: footer(),
          controller: _refreshController,
          onRefresh: _onRefresh,
          enablePullDown: true,
          enablePullUp: false,
          physics: const BouncingScrollPhysics(),
          header: const MaterialClassicHeader(
            color: kPrimaryColor,
          ),
          child: Column(
            children: [
              Container(color: kPrimaryColor2, child: tabbar()),
              Expanded(
                child: TabBarView(
                  children: [
                    page1(11),
                    page2(33),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
