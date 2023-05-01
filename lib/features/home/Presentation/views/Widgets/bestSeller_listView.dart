import 'package:bookly/features/home/Presentation/views/Widgets/bestseller_items.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) =>
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BetsSellerItems('assets/images/test.png', 'title', 'auth', 'price', 'rate'),
          ),
      itemCount: 10,
    );
  }
}
