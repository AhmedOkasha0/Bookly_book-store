import 'package:bookly/features/home/Presentation/views/Widgets/Custom_appBar.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/FeatureBooksListView.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/bestseller_items.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 55),
              child: CustomAppBar(),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: FeaturedBooksListView()),
            SizedBox(
              height: 20,
            ),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 20,
            ),
            BetsSellerItems(
              imagePath: 'assets/images/test.png',
              title: 'Harry Poter  and the Goblet of Fire  ',
              auth: 'J.K. Rowling',
              price: '19.99 € ', rate: '',
            )
          ],
        ),
      ),
    );
  }
}
