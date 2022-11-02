// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:injir/app/constants/constants.dart';

class ProfilButton extends StatelessWidget {
  final String name;
  final Function() onTap;
  final IconData icon;
  const ProfilButton({
    required this.name,
    required this.onTap,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.white,
      minVerticalPadding: 23,
      shape: RoundedRectangleBorder(borderRadius: borderRadius30),
      title: Text(
        name.tr,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(color: Colors.black, fontFamily: josefinSansMedium),
      ),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: kPrimaryColor2.withOpacity(0.1), borderRadius: borderRadius15),
        child: Icon(
          icon,
          color: kPrimaryColor,
        ),
      ),
      trailing: const Icon(
        IconlyBroken.arrowRightCircle,
        color: Colors.black,
      ),
    );
  }
}
