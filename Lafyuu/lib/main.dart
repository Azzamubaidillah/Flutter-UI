import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'const.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: bluePrimary,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 0.5),
          headline2: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 0.5),
          headline3: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 0.5),
          headline4: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 0.5),
          headline5: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 0.5),
          headline6: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 0.5),
          bodyText1: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.5,
              letterSpacing: 0.5),
          caption: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              height: 1.5,
              letterSpacing: 0.5,
              color: grey),
          button: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 0.5),
        ),
      ),
    ),
  );
}
