import 'package:bookly/features/home/home_screen_view.dart';
import 'package:bookly/features/splash_view.dart';
import 'package:bookly/features/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: SplashView.routeName,
      theme: ThemeScreen.darkMode,
    );
  }
}
