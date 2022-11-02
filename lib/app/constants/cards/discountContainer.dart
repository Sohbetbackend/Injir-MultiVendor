// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:injir/app/constants/constants.dart';

class DiscountContainer extends StatelessWidget {
  final String text;

  const DiscountContainer({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -6.4,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        decoration: const BoxDecoration(color: Colors.red, borderRadius: borderRadius5),
        child: Text(
          "-$text%",
          style: const TextStyle(color: Colors.white, fontFamily: josefinSansMedium),
        ),
      ),
    );
  }
}
