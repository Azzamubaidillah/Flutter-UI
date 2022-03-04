import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nubook/app/modules/components.dart';

import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Titles(title: "Favorites")],
    ));
  }
}
