import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/buttons/add_cart_button.dart';
import 'package:injir/app/constants/constants.dart';

class CardCart extends StatelessWidget {
  const CardCart({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
    required this.createdAt,
    required this.id,
  }) : super(key: key);
  final int id;
  final String name;
  final String image;
  final String price;
  final String createdAt;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      height: Get.size.height / 5,
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0.3,
          primary: kGreyColor,
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(borderRadius: borderRadius15),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(12),
                width: Get.size.width,
                height: Get.size.height,
                padding: EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  borderRadius: borderRadius10,
                  color: Colors.white,
                ),
                child: ClipRRect(
                    borderRadius: borderRadius10,
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    )),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 10, left: 14, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: 20),
                        ),
                        Icon(
                          CupertinoIcons.xmark_circle,
                          color: kPrimaryColor2,
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 21,
                            fontFamily: josefinSansBold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            ' TMT',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontFamily: josefinSansMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      createdAt,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: josefinSansRegular,
                      ),
                    ),
                    AddCartButton(
                      id: id,
                      price: price,
                      productProfil: false,
                      createdAt: createdAt,
                      image: '',
                      name: name,
                    )
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
