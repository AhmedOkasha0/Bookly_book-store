import 'package:bookly/features/home/Presentation/views/Widgets/FeatureBooksListView.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/custom_ListViewItem.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/Box_Action.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/custom_widget_appBar.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetalisBody extends StatelessWidget {
  static const String routeName = 'BooksBody';

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomWidgetAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: widthScreen * .17),
              child: CustomListViewItems(
                  imageUrl:
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FImage&psig=AOvVaw0xkK9-ebDu5eu6bKlay982&ust=1683719844343000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNiNi6uX6P4CFQAAAAAdAAAAABAE"),
            ),
            SizedBox(
              height: heightScreen * 0.04,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            SizedBox(
              height: heightScreen * 0.02,
            ),
            Opacity(
              opacity: 0.7,
              child: Text('Rudyard Kipling',
                  style: Styles.textStyle18
                      .copyWith(fontWeight: FontWeight.normal)),
            ),
            SizedBox(
              height: heightScreen * 0.03,
            ),
            Text('data'),
            SizedBox(
              height: heightScreen * 0.03,
            ),
            BoxAction(),
            SizedBox(
              height: context.height * 0.02,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: context.height * 0.15,
                child: FeaturedBooksListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
