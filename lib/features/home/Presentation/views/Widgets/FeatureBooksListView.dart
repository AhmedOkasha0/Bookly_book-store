import 'package:bookly/features/home/Data/models/BooksModel.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/custom_ListViewItem.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = ModalRoute.of(context)!.settings.arguments as Items;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: CustomListViewItems(
            imageUrl: items.volumeInfo!.imageLinks!.thumbnail ?? '' ),
      ),
      itemCount: 5,
    );
  }
}
