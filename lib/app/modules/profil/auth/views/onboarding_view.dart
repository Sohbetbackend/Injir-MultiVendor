import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OnboardingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnboardingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OnboardingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
