// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nubook/app/modules/components.dart';

import '../../../../const.dart';
import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(kPadding, 0, 0, 0),
        child: Column(
          children: [
            Titles(title: "Favorites"),
          ],
        ),
      ),
    );
  }
}
