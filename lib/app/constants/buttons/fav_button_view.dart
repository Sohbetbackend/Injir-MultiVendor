import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:injir/app/constants/constants.dart';

class FavButton extends StatefulWidget {
  const FavButton({super.key});

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
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
        decoration: BoxDecoration(borderRadius: borderRadius10, color: Colors.white.withOpacity(0.4), boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 0.5, blurRadius: 5)]),
        child: Icon(
          value ? IconlyBold.heart : IconlyBroken.heart,
          color: value ? Colors.red : Colors.black,
          size: 26,
        ),
      ),
    );
  }
}
