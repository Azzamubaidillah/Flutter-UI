import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lafyuu/const.dart';
import 'package:line_icons/line_icon.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
            color: dark,
          ),
          title: Text(
            'Nike Air Max 270 Re..',
            style: Theme.of(context).textTheme.headline3!.merge(
                  TextStyle(color: dark),
                ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: dark,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_outlined),
              color: dark,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/nike_big.png"),
              Slider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductNameStarPrice(),
                    Text(
                      "Select Size",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .merge(TextStyle(color: dark)),
                    ),
                    SizedBox(height: 10),
                    SizeScrollable(),
                    SizedBox(height: 10),
                    Text(
                      "Select Color",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .merge(TextStyle(color: dark)),
                    ),
                    SelectColorSection(),
                    Text(
                      "Specification",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .merge(TextStyle(color: dark)),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shown: ",
                          style: TextStyle(color: dark),
                        ),
                        Text(
                          "Laser\nBlue/anthracite/Watermolon/White",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: grey),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Style: ",
                          style: TextStyle(color: dark),
                        ),
                        Text(
                          "CD0113-400",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: grey),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                      style: TextStyle(color: grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class SelectColorSection extends StatelessWidget {
  const SelectColorSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: yellowPrimary,
            ),
            child: Center(
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: light,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bluePrimary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: redPrimary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: greenPrimary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: purplePrimary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: dark,
            ),
          ),
        ),
      ],
    );
  }
}

class SizeScrollable extends StatelessWidget {
  const SizeScrollable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "6",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "6.5",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "7",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: bluePrimary),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "7.5",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "8",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "8.5",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "9",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 45,
            height: 45,
            child: Center(
                child: Text(
              "9.5",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .merge(TextStyle(color: dark)),
            )),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: light),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductNameStarPrice extends StatelessWidget {
  const ProductNameStarPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: Get.width * 0.78,
              child: Text(
                "Nike Air Zoom Pegasus 36 Miami",
                style: Theme.of(context).textTheme.headline3!.merge(
                      TextStyle(color: dark, fontWeight: FontWeight.w900),
                    ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: LineIcon.heart(
                color: grey,
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.star, color: yellowPrimary),
            Icon(Icons.star, color: yellowPrimary),
            Icon(Icons.star, color: yellowPrimary),
            Icon(Icons.star, color: yellowPrimary),
            Icon(Icons.star, color: light),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "\$299,43",
          style: Theme.of(context)
              .textTheme
              .headline3!
              .merge(TextStyle(color: bluePrimary)),
        ),
        SizedBox(height: 10),
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
