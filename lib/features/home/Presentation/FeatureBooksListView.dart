import 'package:bookly/features/home/Presentation/custom_ListViewItem.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: CustomListViewItems(),
      ),
      itemCount: 7,
    );
  }
}
