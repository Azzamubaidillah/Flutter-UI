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
                HomeAppBar(),
                Divider(),
                BannerPromotion(),
                Slider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .merge(TextStyle(color: dark)),
                    ),
                    Text(
                      "More Category",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .merge(TextStyle(color: bluePrimary)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dot(color: light),
          Dot(color: light),
          Dot(color: bluePrimary),
          Dot(color: light),
          Dot(color: light),
        ],
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: Get.width * 0.674,
          child:
              Field(text: "Search Product", obscure: false, icon: Icons.search),
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
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}

class BannerPromotion extends StatelessWidget {
  const BannerPromotion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/promotion.png"),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 0, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Super Flash Sale\n50% Off",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .merge(TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  HoursBox(time: "08"),
                  Text(
                    " : ",
                    style: Theme.of(context).textTheme.headline2!.merge(
                          TextStyle(color: Colors.white),
                        ),
                  ),
                  HoursBox(time: "34"),
                  Text(
                    " : ",
                    style: Theme.of(context).textTheme.headline2!.merge(
                          TextStyle(color: Colors.white),
                        ),
                  ),
                  HoursBox(time: "52"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class HoursBox extends StatelessWidget {
  const HoursBox({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          time,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .merge(TextStyle(color: dark)),
        ),
      ),
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
    );
  }
}

class Field extends StatelessWidget {
  const Field({
    Key? key,
    required this.text,
    required this.obscure,
    required this.icon,
  }) : super(key: key);

  final String text;
  final bool obscure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: light),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: bluePrimary),
        ),
        suffixIcon: Icon(
          icon,
        ),
        border: OutlineInputBorder(),
        labelText: text,
        labelStyle: TextStyle(color: grey),
      ),
      obscureText: obscure,
    );
  }
}
