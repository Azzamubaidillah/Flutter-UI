import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';

import '../../../../const.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
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
                SectionHeader(
                    leftText: "Category", rightText: "More Categories"),
                CategorySection(),
                SectionHeader(leftText: "Flash Sale", rightText: "See More"),
                FlashSaleSection(),
                SectionHeader(leftText: "Mega Sale", rightText: "See More"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ProductCard(
                      image: "assets/images/maxi_red.png",
                      productName: "MS - QUILTED MAXI CROS...",
                    ),
                    ProductCard(
                      image: "assets/images/nike_black.png",
                      productName: "MS - Nike Air Max 270 React...",
                    ),
                    ProductCard(
                      image: "assets/images/maxi_green.png",
                      productName: "MS - Nike Air Max 270 React...",
                    ),
                    ProductCard(
                      image: "assets/images/nike_yellow.png",
                      productName: "MS - Nike Air\nMax 270 React...",
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
        selectedItemColor: bluePrimary,
        unselectedItemColor: grey,
        unselectedLabelStyle: TextStyle(color: grey),
        showUnselectedLabels: true,
      ),
    );
  }
}

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ProductCard(
          image: "assets/images/nike_yellow.png",
          productName: "FS - Nike Air\nMax 270 React...",
        ),
        ProductCard(
          image: "assets/images/maxi_black.png",
          productName: "FS - QUILTED MAXI CROS...",
        ),
        ProductCard(
          image: "assets/images/nike_red.png",
          productName: "FS - Nike Air Max 270 React...",
        ),
        ProductCard(
          image: "assets/images/nike_yellow.png",
          productName: "FS - Nike Air\nMax 270 React...",
        ),
      ]),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.productName,
  }) : super(key: key);
  final String image, productName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
      child: Container(
        width: 141,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: light),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              Text(
                productName,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .merge(TextStyle(color: dark)),
              ),
              Text(
                "\$299,43",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .merge(TextStyle(color: bluePrimary)),
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "\$534,33",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                  Text(
                    " 24% Off",
                    style: TextStyle(
                        color: redPrimary,
                        fontSize: 12,
                        fontWeight: FontWeight.w900),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryIcon(
            text: "Man Shirt",
            icon: "assets/icons/man_shirt.png",
          ),
          CategoryIcon(
            text: "Dress",
            icon: "assets/icons/dress.png",
          ),
          CategoryIcon(
            text: "Man Work\nEquipment",
            icon: "assets/icons/man_bag.png",
          ),
          CategoryIcon(
            text: "Woman Bag",
            icon: "assets/icons/woman_bag.png",
          ),
          CategoryIcon(
            text: "Man Shoes",
            icon: "assets/icons/man_shoes.png",
          ),
          CategoryIcon(
            text: "Woman Heels",
            icon: "assets/icons/woman_shoes.png",
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);
  final String leftText, rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .merge(TextStyle(color: dark)),
        ),
        Text(
          rightText,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .merge(TextStyle(color: bluePrimary)),
        ),
      ],
    );
  }
}

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            child: Image.asset(icon),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              text,
              style: Theme.of(context).textTheme.caption!,
            ),
          )
        ],
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
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: bluePrimary),
          borderRadius: BorderRadius.circular(10),
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
