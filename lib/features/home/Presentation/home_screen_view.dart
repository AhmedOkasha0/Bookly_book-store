import 'package:bookly/features/home/Presentation/Custom_appBar.dart';
import 'package:bookly/features/home/Presentation/FeatureBooksListView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 55),
            child: CustomAppBar(),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: FeaturedBooksListView()),
          // Image.asset('assets/images/test.png'),
        ],
      ),
    );
  }
}
