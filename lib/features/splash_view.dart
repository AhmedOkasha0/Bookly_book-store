import 'dart:async';

import 'package:bookly/features/home/home_screen_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Image.asset(
            'assets/images/logo_splash.png',
            fit: BoxFit.fill,
          )),
        ],
      ),
    );
  }
}
