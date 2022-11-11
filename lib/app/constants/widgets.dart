import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/modules/home/controllers/home_controller.dart';
import 'package:injir/app/modules/others/show_all_products_view.dart';
import 'package:lottie/lottie.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'constants.dart';

Widget dividerr() {
  return Container(
    color: Colors.grey[300],
    width: double.infinity,
    height: 1,
  );
}

dynamic noBannerImage() {
  return const Text('No Image');
}

SnackbarController showSnackBar(String title, String subtitle, Color color) {
  return Get.snackbar(
    title,
    subtitle,
    snackStyle: SnackStyle.FLOATING,
    titleText: title == ''
        ? const SizedBox.shrink()
        : Text(
            title.tr,
            style: const TextStyle(fontFamily: josefinSansSemiBold, fontSize: 18, color: Colors.white),
          ),
    messageText: Text(
      subtitle.tr,
      style: const TextStyle(fontFamily: josefinSansSemiBold, fontSize: 16, color: Colors.white),
    ),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: color,
    borderRadius: 20.0,
    animationDuration: const Duration(milliseconds: 800),
    margin: const EdgeInsets.all(8),
  );
}

Widget spinKit() {
  return Lottie.asset(loader, animate: true, width: 300, height: 300);
}

Padding customDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Container(
      width: double.infinity,
      height: 2,
      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: borderRadius30),
    ),
  );
}

Padding listViewName(String text, bool icon, Size size) {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text.tr,
          style: TextStyle(color: Colors.black, fontSize: size.width >= 800 ? 30 : 22, fontFamily: josefinSansSemiBold),
        ),
        icon
            ? GestureDetector(
                onTap: () {
                  Get.to(() => ShowAllProductsView(text));
                },
                child: Icon(
                  IconlyBroken.arrowRightCircle,
                  color: Colors.black,
                  size: size.width >= 800 ? 35 : 25,
                ),
              )
            : const SizedBox.shrink()
      ],
    ),
  );
}

CustomFooter footer() {
  return CustomFooter(
    builder: (BuildContext context, LoadStatus? mode) {
      Widget body;
      if (mode == LoadStatus.idle) {
        body = const Text('');
      } else if (mode == LoadStatus.loading) {
        body = const CircularProgressIndicator(
          color: kPrimaryColor,
        );
      } else if (mode == LoadStatus.failed) {
        body = const Text('Load Failed!Click retry!');
      } else if (mode == LoadStatus.canLoading) {
        body = const Text('');
      } else {
        body = const Text('No more Data');
      }
      return SizedBox(
        height: 55.0,
        child: Center(child: body),
      );
    },
  );
}

void logOut() {
  Get.bottomSheet(
    Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Text(
                  'log_out'.tr,
                  style: const TextStyle(color: Colors.white, fontFamily: josefinSansMedium, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(CupertinoIcons.xmark_circle, size: 22, color: Colors.white),
                )
              ],
            ),
          ),
          customDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'log_out_title'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[500],
                fontFamily: josefinSansMedium,
                fontSize: 16,
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              // await Auth().logout();
              Get.back();
              // await Restart.restartApp();
            },
            child: Container(
              width: Get.size.width,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.grey[500], borderRadius: borderRadius10),
              child: Text(
                'yes'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontFamily: josefinSansSemiBold, fontSize: 16),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              Get.back();
            },
            child: Container(
              width: Get.size.width,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.red, borderRadius: borderRadius10),
              child: Text(
                'no'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontFamily: josefinSansSemiBold, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void changeLanguage() {
  final HomeController homeController = Get.put(HomeController());
  Get.bottomSheet(
    Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Text(
                  'select_language'.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(CupertinoIcons.xmark_circle, size: 22, color: Colors.black),
                )
              ],
            ),
          ),
          customDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              onTap: () {
                homeController.switchLang('tr');
                Get.back();
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  tmIcon,
                ),
                backgroundColor: Colors.black,
                radius: 20,
              ),
              title: const Text(
                'Türkmen',
                style: TextStyle(fontFamily: josefinSansMedium, color: Colors.black),
              ),
            ),
          ),
          customDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              onTap: () {
                homeController.switchLang('ru');
                Get.back();
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  ruIcon,
                ),
                radius: 20,
                backgroundColor: Colors.black,
              ),
              title: const Text(
                'Русский',
                style: TextStyle(fontFamily: josefinSansMedium, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void defaultBottomSheet({required String name, required Widget child}) {
  Get.bottomSheet(
    Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Text(
                  name.tr,
                  style: const TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(CupertinoIcons.xmark_circle, size: 22, color: Colors.black),
                )
              ],
            ),
          ),
          dividerr(),
          Center(
            child: child,
          )
        ],
      ),
    ),
  );
}

Future<Object?> showDeleteDialog({required BuildContext context, required String text, required String text2, required Function() onTap}) {
  return showGeneralDialog(
    transitionBuilder: (context, a1, a2, widget) {
      final curvedValue = Curves.decelerate.transform(a1.value) - 1.0;
      return Transform(
        transform: Matrix4.translationValues(0.0, curvedValue * 400, 0.0),
        child: Opacity(
          opacity: a1.value,
          child: AlertDialog(
            backgroundColor: Colors.white,
            shape: const OutlineInputBorder(borderRadius: borderRadius15, borderSide: BorderSide(color: kPrimaryColor2)),
            title: Text(
              text.tr,
              style: const TextStyle(color: Colors.black, fontSize: 24, fontFamily: josefinSansBold),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 6, right: 6),
                  child: Text(
                    text2.tr,
                    style: const TextStyle(color: Colors.black, fontSize: 18, fontFamily: josefinSansSemiBold),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(elevation: 0, shape: RoundedRectangleBorder(borderRadius: borderRadius15, side: BorderSide(color: kPrimaryColor2))),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            "No",
                            style: TextStyle(color: Colors.black, fontFamily: josefinSansSemiBold, fontSize: 18),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(elevation: 0, shape: RoundedRectangleBorder(borderRadius: borderRadius15, side: BorderSide(color: kPrimaryColor2))),
                            child: Text(
                              "Yes",
                              style: TextStyle(color: Colors.black, fontFamily: josefinSansRegular, fontSize: 17),
                            ))),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
    barrierDismissible: true,
    barrierLabel: '',
    context: context,
    pageBuilder: (context, animation1, animation2) {
      return const SizedBox.shrink();
    },
  );
}

Padding textpart(String name, bool value) {
  return Padding(
    padding: EdgeInsets.only(left: 8, top: value ? 15 : 30),
    child: Text(
      name.tr,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: const TextStyle(fontSize: 18, color: Colors.black, fontFamily: josefinSansMedium),
    ),
  );
}

Widget customWidget({required Widget child}) {
  return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
      ),
      child: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), child: child));
}
