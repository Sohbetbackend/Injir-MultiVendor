import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
