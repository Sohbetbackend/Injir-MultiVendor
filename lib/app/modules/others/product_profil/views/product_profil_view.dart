import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_profil_controller.dart';

class ProductProfilView extends GetView<ProductProfilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductProfilView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProductProfilView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
