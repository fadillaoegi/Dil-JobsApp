import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselCategory extends StatelessWidget {
  CarouselCategory({super.key, this.image, this.text});
  String? image;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 560,
      height: 270,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image!))),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        padding: const EdgeInsets.only(top: 180.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text!,
              style: white500.copyWith(fontSize: 24.0),
            ),
            // Text(
            //   "",
            //   style: white500.copyWith(fontSize: 14.0),
            // ),
          ],
        ),
      ),
    );
  }
}
