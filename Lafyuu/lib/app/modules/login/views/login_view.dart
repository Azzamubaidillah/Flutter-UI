import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lafyuu/const.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Image.asset("assets/icons/logo_blue.png"),
                Text(
                  "Welcome to Lafyuu",
                  style: Theme.of(context).textTheme.headline4!.merge(
                        TextStyle(color: dark),
                      ),
                ),
                Text(
                  "Sign in to continue",
                  style: Theme.of(context).textTheme.bodyText1!.merge(
                        TextStyle(color: grey),
                      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
