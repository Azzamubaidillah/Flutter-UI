// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../const.dart';
import '../controllers/discover_controller.dart';

class DiscoverView extends GetView<DiscoverController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(kPadding, 0, 0, 0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWithSearchButton(title: "Search title, author or books"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardCategories(image: "1"),
                    CardCategories(image: "2"),
                    CardCategories(image: "3"),
                    CardCategories(image: "4"),
                    CardCategories(image: "5"),
                    CardCategories(image: "6"),
                    CardCategories(image: "7"),
                    CardCategories(image: "8"),
                  ],
                ),
              ),
              Title(title: "Charts"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardChart(image: "1"),
                    CardChart(image: "2"),
                    CardChart(image: "3"),
                    CardChart(image: "4"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardCategories extends StatelessWidget {
  const CardCategories({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, kPadding / 2, kPadding),
      child: ClipRRect(
        child: Image.asset(
          "assets/images/categories_$image.png",
          width: 100,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class CardChart extends StatelessWidget {
  const CardChart({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, kPadding / 2, kPadding),
      child: ClipRRect(
        child: Image.asset(
          "assets/images/chart_$image.png",
          width: 150,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class TitleWithSearchButton extends StatelessWidget {
  const TitleWithSearchButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, kPadding / 2, kPadding, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Title(title: title),
          TextButton(
            onPressed: () {},
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/discover.svg",
                color: kPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding / 2),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 18,
          color: kBlack,
        ),
      ),
    );
  }
}
