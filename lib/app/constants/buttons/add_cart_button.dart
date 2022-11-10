import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:injir/app/constants/constants.dart';

class AddCartButton extends StatefulWidget {
  @override
  State<AddCartButton> createState() => _AddCartButtonState();
}

class _AddCartButtonState extends State<AddCartButton> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(borderRadius: borderRadius10, color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 0.5, blurRadius: 10)]),
        child: Icon(
          value ? IconlyBold.bag : IconlyBroken.bag,
          color: value ? kPrimaryColor2 : Colors.black,
          size: 26,
        ),
      ),
    );
  }
}
