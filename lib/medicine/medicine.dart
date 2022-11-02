import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/modules/home/controllers/home_controller.dart';

import 'medicine_product_profil.dart';

class MedicineApp extends StatefulWidget {
  const MedicineApp({super.key});

  @override
  State<MedicineApp> createState() => _MedicineAppState();
}

class _MedicineAppState extends State<MedicineApp> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Medicine App"),
          elevation: 1,
          backgroundColor: Colors.blue.withOpacity(0.2),
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    value = !value;
                  });
                },
                icon: Icon(
                  value ? IconlyBroken.document : IconlyBroken.category,
                  color: Colors.black,
                )),
            PopupMenuButton<Text>(
                itemBuilder: (context) => <PopupMenuEntry<Text>>[
                      PopupMenuItem<Text>(
                        child: Text('Türkmen dili'),
                        onTap: () {
                          Get.find<HomeController>().switchLang('tr');
                        },
                      ),
                      PopupMenuItem<Text>(
                        child: Text('Rus dili'),
                        onTap: () {
                          Get.find<HomeController>().switchLang('ru');
                        },
                      ),
                      PopupMenuItem<Text>(
                        child: Text('Iňlis dili'),
                        onTap: () {
                          Get.find<HomeController>().switchLang('eng');
                        },
                      ),
                    ]),
          ],
        ),
        body: value ? listView() : gridView());
  }

  GridView gridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3 / 4),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.to(() => MedicineProductProfil(
                  image: "assets/images/banners/1.png",
                ));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 0.2)], borderRadius: borderRadius20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: borderRadius20,
                      child: Image.asset(
                        "assets/images/banners/1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Name',
                            style: TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 19),
                          ),
                          Text(
                            'Product detail',
                            style: TextStyle(color: Colors.grey, fontFamily: josefinSansRegular, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  dynamic listView() {
    return ListView.separated(
      itemCount: 20,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.to(() => MedicineProductProfil(
                  image: "assets/images/banners/1.png",
                ));
          },
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Hero(
                    tag: "assets/images/banners/1.png",
                    child: ClipRRect(
                      borderRadius: borderRadius20,
                      child: Image.asset(
                        "assets/images/banners/1.png",
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Name',
                          style: TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 19),
                        ),
                        Text(
                          'Product detail',
                          style: TextStyle(color: Colors.grey, fontFamily: josefinSansRegular, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(IconlyLight.arrowRightCircle)
                ],
              )),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Divider(
            thickness: 1.5,
            color: Colors.blue.withOpacity(0.2),
          ),
        );
      },
    );
  }
}
