import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReviewsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReviewsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReviewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
