import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import '../../../../const.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  final Icon _icon = Icon(LineIcons.code);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: Get.width * 0.674,
                      child: Field(
                          text: "Search Product",
                          obscure: false,
                          icon: Icons.search),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: LineIcon.heart(
                        color: grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: LineIcon.bell(
                        color: grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
