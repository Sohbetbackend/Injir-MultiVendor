import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/modules/cart/controllers/cart_controller.dart';

class AddCartButton extends StatefulWidget {
  const AddCartButton({
    Key? key,
    required this.id,
    required this.price,
    required this.productProfil,
    required this.name,
    required this.image,
    required this.createdAt,
  }) : super(key: key);

  final int id;
  final String price;
  final String name;
  final String image;
  final String createdAt;
  final bool productProfil;

  @override
  State<AddCartButton> createState() => _AddCartButtonState();
}

class _AddCartButtonState extends State<AddCartButton> {
  bool addCartBool = false;
  int quantity = 1;
  final CartController cartController = Get.put(CartController());
  @override
  void initState() {
    super.initState();
    // changeCartCount2();
  }

  // changeCartCount2() {
  //   addCartBool = false;
  //   for (final element in cartController.list) {
  //     if (element['id'] == widget.id) {
  //       addCartBool = true;
  //       quantity = element['quantity'];
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: addCartBool
          ? Container(
              color: widget.productProfil ? kPrimaryColorCard : Colors.transparent,
              margin: EdgeInsets.only(
                top: 1,
                left: widget.productProfil ? 30 : 0,
                right: widget.productProfil ? 30 : 0,
                bottom: widget.productProfil ? 15 : 0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        quantity--;
                        if (quantity == 0) {
                          quantity = 1;
                          addCartBool = false;
                        }
                        // cartController.minusCardElement(widget.id);
                        setState(() {});
                      },
                      child: Container(
                        padding: widget.productProfil ? EdgeInsets.symmetric(vertical: 10, horizontal: 6) : EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: widget.productProfil
                              ? BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(10), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(10))
                              : BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(7), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(7)),
                        ),
                        child: Icon(CupertinoIcons.minus, color: Colors.white, size: widget.productProfil ? 26 : 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        '${quantity}',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontFamily: josefinSansMedium, fontSize: widget.productProfil ? 24 : 18),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        quantity++;
                        // cartController.addToCard(id: widget.id, createdAT: widget.createdAt, image: widget.image, name: widget.name, price: widget.price);
                        setState(() {});
                      },
                      child: Container(
                        padding: widget.productProfil ? EdgeInsets.symmetric(vertical: 10, horizontal: 6) : EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: widget.productProfil
                              ? BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(20), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(20))
                              : BorderRadius.only(topLeft: Radius.circular(7), topRight: Radius.circular(15), bottomLeft: Radius.circular(7), bottomRight: Radius.circular(15)),
                        ),
                        child: Icon(CupertinoIcons.add, color: Colors.white, size: widget.productProfil ? 26 : 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : GestureDetector(
              onTap: () {
                addCartBool = !addCartBool;
                // cartController.addToCard(id: widget.id, createdAT: widget.createdAt, image: widget.image, name: widget.name, price: widget.price);
                setState(() {});
              },
              child: Container(
                width: Get.size.width,
                margin: EdgeInsets.only(
                  top: 4,
                  left: widget.productProfil ? 30 : 0,
                  right: widget.productProfil ? 30 : 0,
                  bottom: widget.productProfil ? 15 : 0,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: widget.productProfil ? 10 : 4),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: widget.productProfil ? borderRadius20 : borderRadius10,
                ),
                child: Text('addCart'.tr, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontFamily: josefinSansMedium, fontSize: widget.productProfil ? 22 : 16)),
              ),
            ),
    );
  }
}
