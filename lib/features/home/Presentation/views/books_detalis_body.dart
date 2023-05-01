import 'package:bookly/features/home/Presentation/views/Widgets/custom_ListViewItem.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/Box_Action.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/custom_widget_appBar.dart';
import 'package:bookly/features/home/Presentation/views/Widgets/styles.dart';
import 'package:flutter/material.dart';

class BookDetalisBody extends StatelessWidget {
  static const String routeName = 'BooksBody';

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomWidgetAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: widthScreen * .17),
              child: CustomListViewItems(),
            ),
            SizedBox(
              height: heightScreen * 0.07,
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
              height: heightScreen * 0.05,
            ),
            BoxAction(),

          ],
        ),
      ),
    );
  }
}
