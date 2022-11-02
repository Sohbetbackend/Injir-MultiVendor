import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RecentItemsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecentItemsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RecentItemsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
