import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:get/get.dart';
import 'package:lafyuu/const.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 30),
                child: Column(
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
                    ),
                  ],
                ),
              ),
              LoginFill(),
              OrDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: SocialMediaAuthButton(
                      icon: "assets/icons/google.png",
                      text: "Login with Google",
                    ),
                  ),
                  SocialMediaAuthButton(
                    icon: "assets/icons/facebook.png",
                    text: "Login with Facebook",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaAuthButton extends StatelessWidget {
  const SocialMediaAuthButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(icon),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(
              text,
              style: Theme.of(context).textTheme.button!.merge(
                    TextStyle(color: grey),
                  ),
            ),
          ),
          SizedBox(width: 5),
        ],
      ),
      style: ElevatedButton.styleFrom(primary: Colors.white),
    );
  }
}

class LoginFill extends StatelessWidget {
  const LoginFill({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Field(
          text: "Email",
          obscure: false,
          icon: Icons.mail_outline,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Field(
            text: "Password",
            obscure: true,
            icon: Icons.lock_outline,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              primary: bluePrimary,
              onPrimary: Colors.white,
            ),
            onPressed: () {},
            child: Text('Sign In'),
          ),
        ),
      ],
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(),
        Text(
          "OR",
          style: Theme.of(context).textTheme.headline5!.merge(
                TextStyle(color: grey),
              ),
        ),
        SizedBox(),
      ],
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
