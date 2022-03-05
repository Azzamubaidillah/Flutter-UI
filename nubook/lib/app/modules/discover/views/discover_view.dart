// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../const.dart';
import '../../components.dart';
import '../controllers/discover_controller.dart';

class DiscoverView extends GetView<DiscoverController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                Titles(title: "Charts"),
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
                ),
                TitleWithButton(title: "New Release"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Cards(
                        image: "assets/images/image_6.png",
                        title: "Manusia Setengah Dewa",
                        artist: "Iwan Fals",
                      ),
                      SizedBox(width: 10),
                      Cards(
                        image: "assets/images/image_7.png",
                        title: "Tanpa Karena",
                        artist: "Fiersa Besari",
                      ),
                      SizedBox(width: 10),
                      Cards(
                        image: "assets/images/image_8.png",
                        title: "Sahabat Sejati Paling Setia",
                        artist: "Sheila on 7",
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                TitleWithButton(title: "Top Trending"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Cards(
                        image: "assets/images/trending_1.png",
                        title: "Genit",
                        artist: "Tipe-X",
                      ),
                      SizedBox(width: 10),
                      Cards(
                        image: "assets/images/trending_2.png",
                        title: "Tanpa Karena",
                        artist: "Fiersa Besari",
                      ),
                      SizedBox(width: 10),
                      Cards(
                        image: "assets/images/trending_3.png",
                        title: "Dan",
                        artist: "Sheila on 7",
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
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
      padding: const EdgeInsets.fromLTRB(0, 0, kPadding / 2, 0),
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
      padding: const EdgeInsets.fromLTRB(0, 0, kPadding / 2, 0),
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
          Titles(title: title),
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
