// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:nubook/app/modules/discover/views/discover_view.dart';
import 'package:nubook/app/modules/favorites/views/favorites_view.dart';
import 'package:nubook/app/modules/home/views/home_view.dart';
import 'package:nubook/app/modules/user/views/user_view.dart';
import 'package:nubook/const.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomeView(),
            DiscoverView(),
            FavoritesView(),
            UserView(),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/foryou.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/foryou.svg",
                color: kPrimary,
              ),
              label: "For You",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/discover.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/discover.svg",
                color: kPrimary,
              ),
              label: "Discover",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/favorites.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/favorites.svg",
                color: kPrimary,
              ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/me.svg"),
              label: "Me",
              activeIcon: SvgPicture.asset(
                "assets/icons/me.svg",
                color: kPrimary,
              ),
            ),
          ],
        ),
      );
    });
  }
}
