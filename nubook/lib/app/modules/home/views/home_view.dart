// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nubook/const.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(kPadding, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kPadding / 2),
                child: Text(
                  "Daily Recommended",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: kBlack,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendedCard(
                      image: "assets/images/image_1.png",
                      tag: "Novel",
                      title: "Sabtu Berasama\nBapak",
                      subtitle: "Lorem ipsum dolor sit amet",
                    ),
                    SizedBox(width: 15),
                    RecommendedCard(
                      image: "assets/images/image_2.png",
                      tag: "Investigasi",
                      title: "Dibalik Investigasi\nTempo",
                      subtitle: "Lorem ipsum dolor sit amet",
                    ),
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

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    Key? key,
    required this.image,
    required this.tag,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image, tag, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            width: 240,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kPadding / 1.5, vertical: kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Text(
                    tag,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                subtitle,
                style: TextStyle(fontSize: 11, color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}
