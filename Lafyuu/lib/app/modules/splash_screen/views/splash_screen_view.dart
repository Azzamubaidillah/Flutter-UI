import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lafyuu/const.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluePrimary,
      body: Center(
        child: Image.asset("assets/icons/logo_white.png"),
      ),
    );
  }
}
