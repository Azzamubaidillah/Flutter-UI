import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplasScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SplasScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
