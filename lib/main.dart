import 'package:bookly/features/home/Presentation/homeView.dart';
import 'package:bookly/features/home/Presentation/views/books_detalis_body.dart';
import 'package:bookly/features/splash/splash_view.dart';
import 'package:bookly/features/theme/theme.dart';
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
        HomeView.routeName: (context) => HomeView(),
        BookDetalisBody.routeName:(context) => BookDetalisBody(),
      },
      initialRoute: SplashView.routeName,
      theme: ThemeScreen.darkMode,
    );
  }
}
