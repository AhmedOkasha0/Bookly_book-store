import 'package:bookly/features/home/Presentation/views/Widgets/styles.dart';
import 'package:flutter/material.dart';

class BetsSellerItems extends StatelessWidget {
  String imagePath;
  String title;
  String auth;
  String price;
  String rate;
  BetsSellerItems({
    required this.imagePath,
    required this.title,
    required this.auth,
    required this.price,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    title,
                    maxLines: 2,
                    style: Styles.textStyle20,
                  )),
              SizedBox(
                height: 3,
              ),
              Text(
                auth,
                style: Styles.textStyle14,
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: Styles.textStyle20,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
