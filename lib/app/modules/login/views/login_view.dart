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
                    Button(
                      text: "SmartId",
                      textCol: 0xFF567DF4,
                      icon: "assets/images/fingerprint.png",
                      backCol: 0xFFEEF2FE,
                      opacity: 1,
                    ),
                    SizedBox(width: 10),
                    Button(
                      text: "SignIn",
                      textCol: 0xFFFFFFFF,
                      icon: "assets/images/arrow_right.png",
                      backCol: 0xFF567DF4,
                      opacity: 1,
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

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.icon,
    required this.backCol,
    required this.textCol,
    required this.text,
    required this.opacity,
  }) : super(key: key);
  final String text;
  final String icon;
  final int backCol;
  final int textCol;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              color: Color(textCol),
              fontSize: 16,
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: Color(backCol).withOpacity(opacity),
          fixedSize: Size(150, 50)),
    );
  }
}
