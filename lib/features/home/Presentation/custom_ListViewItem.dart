import 'package:flutter/material.dart';

class CustomListViewItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/harry.png'))),
    );
  }
}
