import 'package:flutter/material.dart';
import 'package:injir/app/constants/constants.dart';

class MedicineProductProfil extends StatelessWidget {
  final String image;

  const MedicineProductProfil({
    super.key,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: borderRadius30,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Product Name",
                  style: TextStyle(fontFamily: josefinSansSemiBold, fontSize: 22),
                ),
                Text("Asd"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
