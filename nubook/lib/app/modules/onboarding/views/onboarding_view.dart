// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nubook/app/routes/app_pages.dart';
import 'package:nubook/const.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Stream any song, anywhere,\nanytime",
              body: "",
              image: SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Center(
                  child: Image.asset("assets/illustrations/onboarding_1.png"),
                ),
              ),
            ),
            PageViewModel(
              title: "Listen to your music with\ntime-synced lyrics",
              bodyWidget: SizedBox(),
              image: SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Center(
                  child: Image.asset("assets/illustrations/onboarding_2.png"),
                ),
              ),
            ),
            PageViewModel(
              title: "Join the community to add, sync\nand translate lyrics",
              body: "",
              image: SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Center(
                  child: Image.asset("assets/illustrations/onboarding_3.png"),
                ),
              ),
            ),
          ],
          onDone: () {},
          showDoneButton: false,
          showNextButton: false,
          dotsDecorator: DotsDecorator(activeColor: kPrimary),
          globalFooter: Column(
            children: [
              SizedBox(
                width: Get.width * 0.8,
                child: ElevatedButton(
                  onPressed: () => Get.offNamed(Routes.DASHBOARD),
                  child: Text("CONTINUE WITH GOOLE"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(kButtonPrimary),
                    shadowColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: Get.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "CONTINUE WITH FACEBOOK",
                    style: TextStyle(color: kBlack),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(kGrayWhite),
                    shadowColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100)
            ],
          )),
    );
  }
}
