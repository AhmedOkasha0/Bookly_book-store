import 'package:bookly/Strings.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          StringsProject.logo,
          height: 18,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          iconSize: 30,
          color: Colors.white,
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
