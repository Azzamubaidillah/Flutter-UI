import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashboardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/foryou.svg",
              color: kPrimary,
              width: 30,
            ),
            label: "For You",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/discover.svg",
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/me.svg"),
            label: "Me",
          ),
        ],
        selectedLabelStyle: TextStyle(color: kGrayWhite),
      ),
    );
  }
}
