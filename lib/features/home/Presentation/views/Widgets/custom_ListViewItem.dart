import 'package:bookly/features/home/Data/models/BooksModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItems extends StatelessWidget {
  late Items items;
  String imageUrl;
  CustomListViewItems({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.alarm),
        ));
  }
}
