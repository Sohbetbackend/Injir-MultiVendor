import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/constants/widgets.dart';

class AddCartButtonMini extends StatefulWidget {
  @override
  State<AddCartButtonMini> createState() => _AddCartButtonMiniState();
}

class _AddCartButtonMiniState extends State<AddCartButtonMini> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
          showSnackBar('Goşuldy', 'Sebede haryt goşuldy !', kPrimaryColor2);
        });
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(borderRadius: borderRadius10, color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 0.5, blurRadius: 10)]),
        child: Icon(
          value ? IconlyBold.bag : IconlyBroken.bag,
          color: value ? kPrimaryColor : Colors.black,
          size: 26,
        ),
      ),
    );
  }
}
