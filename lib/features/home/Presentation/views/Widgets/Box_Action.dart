import 'package:bookly/features/home/Presentation/views/Widgets/Custom_botton.dart';
import 'package:flutter/material.dart';

class BoxAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButtom(
            title: '19.99€',
            backgroundColor: Colors.white,
            BorderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButtom(
            BorderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            backgroundColor: Color(0xffEF8262),
            title: 'Free preview',
          ),
        ),
      ],
    );
  }
}
