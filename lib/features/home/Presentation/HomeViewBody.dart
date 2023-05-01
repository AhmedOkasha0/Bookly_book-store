import 'package:bookly/features/home/Presentation/views/Widgets/Custom_appBar.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/FeatureBooksListView.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/bestSeller_listView.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
