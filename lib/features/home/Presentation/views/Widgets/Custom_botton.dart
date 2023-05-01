import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  String title;
  final Color backgroundColor;
  final BorderRadius;
  CustomButtom({
    required this.title,
    required this.backgroundColor,
    this.BorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        child: Text(title),
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius,
            )),
      ),
    );
  }
}
