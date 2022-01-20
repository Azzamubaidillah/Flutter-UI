import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Dribbbox",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xFF22215B)),
                    ),
                    Image.asset("assets/images/union.png")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xFFEEF2FE),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xFF22215B),
                        ),
                      ),
                      hintText: "Search Folder",
                      hintStyle: TextStyle(
                          color: Color(0xFF22215B),
                          fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF22215B),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Recent",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.window),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FolderCard(
                        text: "Mobile Apps",
                        date: "December 20.2020",
                        textColor: 0xFF415EB6,
                        backColor: 0xFFEEF7FE,
                        assetColor: "ungu",
                      ),
                      FolderCard(
                        text: "SVG Apps",
                        date: "December 14.2020",
                        textColor: 0xFFFFB110,
                        backColor: 0xFFFFFBEC,
                        assetColor: "kuning",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FolderCard(
                      text: "Prototypes",
                      date: "December 22.2020",
                      textColor: 0xFFF45656,
                      backColor: 0xFFFEEEEE,
                      assetColor: "merah",
                    ),
                    FolderCard(
                      text: "SVG Apps",
                      date: "December 14.2020",
                      textColor: 0xFF23B0B0,
                      backColor: 0xFFF0FFFF,
                      assetColor: "biru",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FolderCard(
                        text: "Design",
                        date: "December 20.2020",
                        textColor: 0xFF415EB6,
                        backColor: 0xFFEEF7FE,
                        assetColor: "ungu",
                      ),
                      FolderCard(
                        text: "Portfolio",
                        date: "December 14.2020",
                        textColor: 0xFFFFB110,
                        backColor: 0xFFFFFBEC,
                        assetColor: "kuning",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FolderCard(
                      text: "References",
                      date: "December 22.2020",
                      textColor: 0xFFF45656,
                      backColor: 0xFFFEEEEE,
                      assetColor: "merah",
                    ),
                    FolderCard(
                      text: "Clients",
                      date: "December 14.2020",
                      textColor: 0xFF23B0B0,
                      backColor: 0xFFF0FFFF,
                      assetColor: "biru",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FolderCard(
                        text: "Design",
                        date: "December 20.2020",
                        textColor: 0xFF415EB6,
                        backColor: 0xFFEEF7FE,
                        assetColor: "ungu",
                      ),
                      FolderCard(
                        text: "Portfolio",
                        date: "December 14.2020",
                        textColor: 0xFFFFB110,
                        backColor: 0xFFFFFBEC,
                        assetColor: "kuning",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FolderCard(
                      text: "References",
                      date: "December 22.2020",
                      textColor: 0xFFF45656,
                      backColor: 0xFFFEEEEE,
                      assetColor: "merah",
                    ),
                    FolderCard(
                      text: "Clients",
                      date: "December 14.2020",
                      textColor: 0xFF23B0B0,
                      backColor: 0xFFF0FFFF,
                      assetColor: "biru",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF22215B),
      ),
    );
  }
}

class FolderCard extends StatelessWidget {
  const FolderCard({
    Key? key,
    required this.backColor,
    required this.textColor,
    required this.text,
    required this.date,
    required this.assetColor,
  }) : super(key: key);

  final int backColor, textColor;
  final String text, date, assetColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      height: 110,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/folder_$assetColor.png"),
                Image.asset("assets/images/option_$assetColor.png"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(textColor),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            Text(
              date,
              style: TextStyle(
                color: Color(textColor),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Color(backColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
