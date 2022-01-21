import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';
import 'const.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: bluePrimary,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          headline3: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          headline5: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          bodyText1: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          caption: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          button: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w700, letterSpacing: 0.5),
        ),
      ),
    ),
  );
}
