import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/images/pict_1.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Text("Welcome to"),
                Text("Dirrbox"),
                Container(
                  width: 200,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data \n\nJoin For Free.",
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset("assets/images/fingerprint.png"),
                          Text("SmartId"),
                        ],
                      ),
                      style: TextButton.styleFrom(primary: Color(0xFF567DF4)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
