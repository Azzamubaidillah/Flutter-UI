import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF22215B),
            ),
          ),
        ),
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF22215B),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Color(0xFF22215B),
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: Get.width,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 40),
                          Image.asset("assets/images/profile.png"),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                "PRO",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFFF317B),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Neelesh Chaudhary",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "UI/UX Designer",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF22215B),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 1,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  onPressed: () {},
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
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Recent Uploads",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 1,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_circle_up),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset("assets/images/word.png"),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Projects.docs",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      "November 22 2020",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                Expanded(child: SizedBox(width: 10)),
                Text("300kb"),
              ],
            )
          ],
        ),
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
