import 'dart:async';

import 'package:bookly/features/home/Presentation/HomeViewBody.dart';
import 'package:bookly/features/home/Presentation/homeView.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    sliderAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset(0, 0))
            .animate(animationController);
    animationController.forward();
    sliderAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SlideTransition(
            position: sliderAnimation,
            child: Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
