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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(kPadding, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Title(title: "Recommended"),
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
                      SizedBox(width: 15),
                    ],
                  ),
                ),
                TitleWithButton(
                  title: "Recently Played",
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        image: "assets/images/image_3.png",
                        title: "Manusia Setengah Dewa",
                        artist: "Iwan Fals",
                      ),
                      SizedBox(width: 10),
                      Card(
                        image: "assets/images/image_4.png",
                        title: "Tanpa Karena",
                        artist: "Fiersa Besari",
                      ),
                      SizedBox(width: 10),
                      Card(
                        image: "assets/images/image_5.png",
                        title: "Sahabat Sejati Paling Setia",
                        artist: "Sheila on 7",
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                TitleWithButton(
                  title: "My Campaign",
                ),
                CampaignComponent(
                  avatar: "assets/images/avatar_1.png",
                  image: "assets/images/avatar_2.png",
                  title: "Manusia Setengah Dewa",
                  tag: "Inspirational Quotes",
                  person: "Shohibul",
                ),
                Divider(),
                CampaignComponent(
                  avatar: "assets/images/avatar_3.png",
                  image: "assets/images/avatar_4.png",
                  title: "Tanpa Karena",
                  tag: "Novel",
                  person: "Muhammad",
                ),
                TitleWithButton(
                  title: "New Released",
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
                      SizedBox(width: 15),
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

class CampaignComponent extends StatelessWidget {
  const CampaignComponent({
    Key? key,
    required this.avatar,
    required this.image,
    required this.title,
    required this.tag,
    required this.person,
  }) : super(key: key);

  final String avatar, image, person, title, tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(avatar),
              radius: 10,
            ),
            Text(
              "  $person",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
            Text(
              " invite you to buy this book together",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image, width: 50),
            ),
            SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    Text(
                      tag,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: kBlack.withOpacity(0.6),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(
                children: [
                  SizedBox(
                    width: 50,
                    height: 25,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "GET",
                          style: TextStyle(color: kPrimary, fontSize: 8),
                        ),
                        style: ElevatedButton.styleFrom(primary: kGrayWhite)),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "get 30% off",
                    style: TextStyle(fontSize: 8),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.image,
    required this.title,
    required this.artist,
  }) : super(key: key);

  final String image, title, artist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 130,
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            artist,
            style: TextStyle(
                fontSize: 13,
                color: kBlack.withOpacity(0.6),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.fromLTRB(0, kPadding / 2, kPadding, kPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Title(title: title),
          TextButton(
            onPressed: () {},
            child: Text(
              "See All",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: kPrimary),
            ),
          )
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
          fontSize: 22,
          color: kBlack,
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