// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nubook/const.dart';

class Titles extends StatelessWidget {
  const Titles({
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
          Titles(title: title),
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

class Cards extends StatelessWidget {
  const Cards({
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
